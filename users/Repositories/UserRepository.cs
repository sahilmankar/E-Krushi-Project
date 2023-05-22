using E_krushiApp.Models;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using E_krushiApp.Repositories.Interface;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.IdentityModel.Tokens;
using System.Security.Claims;
using E_krushiApp.Helpers;
using Microsoft.Extensions.Options;

namespace E_krushiApp.Repositories;

public class UserRepository:IUserRepository{

   private readonly IConfiguration _configuration;
    private readonly string _conString;
    private readonly AppSettings _appsettings;

    public UserRepository(IConfiguration configuration, IOptions<AppSettings> appSettings)
    {

        _configuration = configuration;
        _conString = this._configuration.GetConnectionString("DefaultConnection");
        _appsettings = appSettings.Value;
    }
    
     public  AuthenticateResponse Authenticate(AuthenticateRequest request)
    {
        User user = GetUser(request);

        // return null if user not found
        if (user == null) { return null; }
        // authentication successful so generate jwt token
        var token =  generateJwtToken(user);
        return new AuthenticateResponse(user, token);
    }

    private string generateJwtToken(User user)

    {
        // generate token that is valid for 7 days
        var tokenHandler = new JwtSecurityTokenHandler();
        var key = System.Text.Encoding.ASCII.GetBytes(_appsettings.Secret);
        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = new ClaimsIdentity( AllClaims(user)),
            Expires = DateTime.UtcNow.AddDays(7),
            SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key),
       SecurityAlgorithms.HmacSha256Signature)
        };
        var token = tokenHandler.CreateToken(tokenDescriptor);
        return tokenHandler.WriteToken(token);
    }

    private List<Claim> AllClaims(User user)
    {
        List<Claim> claims = new List<Claim>();
        //you can add custom Claims here
        claims.Add(new Claim("id", user.UserId.ToString()));
        List<string> roles = GetRolesOfUser(user.UserId);
        foreach (string role in roles)
        {
            claims.Add(new Claim("Roles", role));
        }
        return claims;
    }

    private User GetUser(AuthenticateRequest request)
    {
        User user = null;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
        try
        {
            string query = "SELECT * FROM users where email=@email AND password =@password";
            con.Open();
            MySqlCommand command = new MySqlCommand(query, con);
            command.Parameters.AddWithValue("@email", request.Email);
            command.Parameters.AddWithValue("@password", request.Password);
            MySqlDataReader reader = command.ExecuteReader();

            if ( reader.Read())
            {
                int userId = int.Parse(reader["user_id"].ToString());
                string userEmail = reader["email"].ToString();
                string userPassword = reader["password"].ToString();
                string contactNumber=reader["contact_number"].ToString();
                user = new User
                {
                    UserId = userId,
                    Email = userEmail,
                    Password = userPassword,
                    ContactNumber=contactNumber
                };
            }
            reader.Close();
        }
        catch (Exception ee)
        {

            throw ee;
        }
        finally
        {
             con.Close();
        }
        return user;

    }


    private List<string> GetRolesOfUser(int userId)
    {
        List<string> roles = new List<string>();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
        try
        {
            string query = "SELECT role from roles where role_id in  (select role_id from user_roles where user_id=@userId)";
            Console.WriteLine(query);
            con.Open();
            MySqlCommand cmd = new MySqlCommand(query, con);
            cmd.Parameters.AddWithValue("@userId", userId);
            MySqlDataReader reader = cmd.ExecuteReader();
            while ( reader.Read())
            {
                string roleName = reader["role"].ToString();
                // Console.WriteLine(roleName);
                roles.Add(roleName);
            }
            reader.Close();
        }
        catch (Exception ee)
        {
            throw ee;
        }
        finally
        {
            con.Close();
        }
        return roles;
    }
    public  List<User> GetAllUsers(){
        List<User> users = new List<User>();
        MySqlConnection connection = new MySqlConnection();
        connection.ConnectionString= _conString;
       try
       {
        string query = "select * from users";
        MySqlCommand cmd = new MySqlCommand(query, connection);
        connection.Open();
        
        MySqlDataReader reader= cmd.ExecuteReader();
        while(reader.Read()){
            int id = Int32.Parse(reader["user_id"].ToString());
            string email= reader["email"].ToString();
            string password= reader["password"].ToString();
            string contactNumber= reader["contact_number"].ToString();
        
         
         User user = new User{
            UserId = id,
            Email= email,
            Password=password,
            ContactNumber= contactNumber, 
         };

         users.Add(user);
        
       }
        reader.Close();
       }
       catch(Exception ee){
        throw ee;
       }
        
        finally{
       connection.Close();
        }
 
    
    return users;
    }

    public bool ValidateUser(Credential user)
    {
        bool status = false;
        MySqlConnection connection = new MySqlConnection(_conString);
        try
        {
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "SELECT EXISTS(SELECT * FROM users where email=@email and password=@password)";
            command.Connection = connection;
            command.Parameters.AddWithValue("@email", user.Email);
            command.Parameters.AddWithValue("@password", user.Password);
            connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
            reader.Read();
            if ((Int64)reader[0] == 1)
            {
                status = true;
            }
            reader.Close();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            connection.Close();
        }
        return status;

    }



    public User GetById(int id){

        User user= new User();
        MySqlConnection connection =new MySqlConnection();
        connection.ConnectionString=_conString;
        try{

        string query= "select * from users where user_id ="+id;
         MySqlCommand cmd = new MySqlCommand(query,connection);
         connection.Open();
         MySqlDataReader reader = cmd.ExecuteReader();
         if(reader.Read()){


            string email= reader["email"].ToString();
            string password= reader["password"].ToString();
            string contactNumber= reader["contact_number"].ToString();
         
             user = new User(){
                UserId=id,
                Email= email,
                Password=password,
                ContactNumber=contactNumber

             };
           }
            reader.Close();
        }
        catch(Exception ee){

            throw ee;

        }

        finally{
           connection.Close();
        }
      
       return user;
    }


      public bool Register(User user){

        bool status= false;
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString=_conString;

        try{
            string query="Insert into users(email,password,contact_number) values (@email,@password,@contact_number)";
            MySqlCommand cmd =new MySqlCommand(query,con);
            cmd.Parameters.AddWithValue("@email",user.Email);
            cmd.Parameters.AddWithValue("@password",user.Password);
            cmd.Parameters.AddWithValue("@contact_number",user.ContactNumber);
        con.Open();
        int rowsaffected=cmd.ExecuteNonQuery();
        if(rowsaffected>0){

            status=true;
        }
        }

        catch(Exception ee){

            throw ee;
        }

        finally{

            con.Close();
          }

          return status;

      }

      public bool UpdateUser(User user){

        bool status= false;
        MySqlConnection connection = new MySqlConnection();
        connection.ConnectionString=_conString;
        try{
            string query= "update users set user_id=@userId,email=@email,password=@password,contact_number=@contact_number";
            MySqlCommand command = new MySqlCommand(query,connection);
            command.Parameters.AddWithValue("@userId",user.UserId);
            command.Parameters.AddWithValue("@eamil",user.Email);
            command.Parameters.AddWithValue("@password",user.Password);
            command.Parameters.AddWithValue("@contact_number",user.ContactNumber);
             connection.Open();
            int rowsaffected = command.ExecuteNonQuery();
            if(rowsaffected>0){
                status=true;
            }

        }
        
        catch(Exception ee){

            throw ee;

        }

        finally{

            connection.Close();
        }
           return status;
      }


      public bool DeleteUser(int id){
        bool status = false;
        MySqlConnection connection =new MySqlConnection();
        connection.ConnectionString=_conString;
        try{

            string query= "delete from users where user_id=@userId";
            MySqlCommand command= new MySqlCommand(query,connection);
            command.Parameters.AddWithValue("@userId",id);
            connection.Open();
            int rowsaffected = command.ExecuteNonQuery();
            if(rowsaffected>0){
                status=true;
            }
        }
        catch(Exception ee){

            throw ee;
        }

        finally{
            connection.Close();
        }
        return status;
      }
}
    