using E_krushiApp.Models;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using E_krushiApp.Repositories.Interface;
namespace E_krushiApp.Repositories;

      public class RoleRepository : IRoleRepository
    {

        public string conString= "server=localhost; port=3306; user=root; password=PASSWORD; database=E_krushi";
     public List<Role> GetAll()
        {
           List<Role> roles =new List<Role>();
           MySqlConnection connection = new MySqlConnection();
           connection.ConnectionString=conString;
           try{
            string query = "select * from roles";
            MySqlCommand command = new MySqlCommand(query,connection);
            connection.Open();
            MySqlDataReader reader = command.ExecuteReader();
                
            while (reader.Read()){


                int roleid = int.Parse(reader["role_id"].ToString());
                string role = reader["role"].ToString();



                Role r1 = new Role{
                    
                    RoleId=roleid,
                    RoleName=role
                    };

                roles.Add(r1);

            };
           }
            catch(Exception ee){
                throw ee;
            }

            finally{
                connection.Close();
            }

            return roles;
            }


            public Role GetById(int id){
                Role role = new Role();
                MySqlConnection connection = new MySqlConnection();
                connection.ConnectionString=conString;
                try{

                    string query = "select * from roles where role_id=@roleId";
                    MySqlCommand command = new MySqlCommand(query,connection);
                    command.Parameters.AddWithValue("@roleId",id);
                    connection.Open();
                    MySqlDataReader reader = command.ExecuteReader();
                    if(reader.Read()){

                        int roleid= int.Parse(reader["role_id"].ToString());
                        string RoleName = reader["role"].ToString();


                      role = new Role(){

                        RoleId=roleid,
                        RoleName=RoleName

                      };

                      


                    }


                    }

                    catch(Exception ee){
                      throw ee;
                    }

                    finally{

                        connection.Close();
                    }

                    return role;
                }
    }
            
    
           

        

        