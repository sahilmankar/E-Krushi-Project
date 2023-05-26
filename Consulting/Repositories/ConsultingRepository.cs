using E_krushiApp.Models;
using E_krushiApp.Repository.Interface;
using MySql.Data.MySqlClient;

namespace E_krushiApp.Repository;

public class ConsultingRepository:IConsultingRepository{

 private readonly IConfiguration _configuration;
    private readonly string _conString;
   
    public ConsultingRepository(IConfiguration configuration )
    {

        _configuration = configuration;
        _conString = this._configuration.GetConnectionString("DefaultConnection");
    }
   

    public async Task<List<Question>> Questions(){

        List<Question> questions = new List<Question>();
        MySqlConnection connection = new MySqlConnection();
        connection.ConnectionString= _conString;

        try{

            string query = "select * from questions";
            MySqlCommand command = new MySqlCommand(query,connection);
            await connection.OpenAsync();
            MySqlDataReader reader = command.ExecuteReader();
            while(await reader.ReadAsync()){
                int Id= int.Parse(reader["question_id"].ToString());
                DateTime Date= DateTime.Parse(reader["question_date"].ToString());
                string description = reader["description"].ToString();
                int custId =int.Parse(reader["cust_id"].ToString());
                int categoryId = int.Parse(reader["category_id"].ToString());
                Question question = new Question(){
                    Id=Id,
                    Date=Date,
                    Description=description,
                    CustId=custId,
                    CategoryId=categoryId
                };
                questions.Add(question);
            }
            await reader.CloseAsync();
        }
        catch(Exception ee){
            throw ee;
        }
        finally{
            await connection.CloseAsync();
        }
        return questions;
    }

     public async Task<Question> Question(int id)
    {

        Question question = new Question();
        MySqlConnection connection = new MySqlConnection();
        connection.ConnectionString = _conString;
        try
        {
            string query = "select * from questions where question_id = @id";
            MySqlCommand command = new MySqlCommand(query, connection);
            await connection.OpenAsync();
            command.Parameters.AddWithValue("@id", id);
            MySqlDataReader reader = command.ExecuteReader();
            if (await reader.ReadAsync())
            {
               int Id= int.Parse(reader["question_id"].ToString());
                DateTime Date= DateTime.Parse(reader["question_date"].ToString());
                string description = reader["description"].ToString();
                int custId =int.Parse(reader["cust_id"].ToString());
                int categoryId = int.Parse(reader["category_id"].ToString());
                question = new Question{
                    Id=Id,
                    Date=Date,
                    Description=description,
                    CustId=custId,
                    CategoryId=categoryId
                };
            }
            await reader.CloseAsync();
        }
        catch (Exception ee)
        {

            throw ee;
        }
        finally
        {
            await connection.CloseAsync();
        }
        return question;
    }


     public async Task<List<SubjectMatterExpert>> Experts()
    {
        List<SubjectMatterExpert> experts = new List<SubjectMatterExpert>();
        MySqlConnection connection = new MySqlConnection();
        connection.ConnectionString = _conString;
        try
        {
            string query = "select * from agri_doctors";
            MySqlCommand command = new MySqlCommand(query, connection);
            await connection.OpenAsync();
            MySqlDataReader reader = command.ExecuteReader();

            while (await reader.ReadAsync())
            {
                int id = int.Parse(reader["agri_doctor_id"].ToString());
                string name = reader["name"].ToString();
                string specialFor = reader["specialist_for"].ToString();
                int userId = int.Parse(reader["user_id"].ToString());

                SubjectMatterExpert expert = new SubjectMatterExpert()
                {
                    Id = id,
                    Name = name,
                    Expertise = specialFor,
                    UserId = userId
                };
                experts.Add(expert);
            }

        }
        catch (Exception ee)
        {
            throw ee;
        }

        finally
        {
             await connection.CloseAsync();
        }
        return experts;
    }
     public async Task<SubjectMatterExpert> Expert(int id)
     {
        SubjectMatterExpert doctor = new SubjectMatterExpert();
        MySqlConnection connection = new MySqlConnection();
        connection.ConnectionString = _conString;

        try
        {

            string query = "select * from agri_doctors where agri_doctor_id = @id";
            MySqlCommand command = new MySqlCommand(query, connection);
            await connection.OpenAsync();
            command.Parameters.AddWithValue("@id", id);
            MySqlDataReader reader = command.ExecuteReader();
            if (await reader.ReadAsync())
            {

                int Id = int.Parse(reader["agri_doctor_id"].ToString());
                string name = reader["name"].ToString();
                string specialFor = reader["specialist_for"].ToString();
                int userId = int.Parse(reader["user_id"].ToString());

                doctor = new SubjectMatterExpert()
                {

                    Id = Id,
                    Name = name,
                    Expertise = specialFor,
                    UserId = userId
                };



            }
        }

        catch (Exception ee)
        {

            throw ee;
        }


        finally
        {
            await connection.CloseAsync();
        }

        return doctor;
    }

    
    

    public async Task<List<Answer>> Answers()
    {
        List<Answer> answers = new List<Answer>();
        MySqlConnection connection = new MySqlConnection();
        connection.ConnectionString = _conString;
        try
        {
            string query = "select * from solutions";
            MySqlCommand command = new MySqlCommand(query, connection);
            await connection.OpenAsync();
            MySqlDataReader reader = command.ExecuteReader();
            while (await reader.ReadAsync())
            {
                int solutionId = int.Parse(reader["solution_id"].ToString());
                string description = reader["description"].ToString();
                Answer answer = new Answer()
                {
                    Id = solutionId,
                    Description = description,
                };
                answers.Add(answer);
            }

        }
        catch (Exception ee)
        {
            throw ee;
        }
        finally
        {
            await connection.CloseAsync();
        }

        return answers;
    }

    public async Task<List<Question>> Category(int id)
    {
        List<Question> questions = new List<Question>();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
    try
    {
        string query = "select * from questions where category_id = @id";
        await con.OpenAsync();
        MySqlCommand command = new MySqlCommand(query, con);
        command.Parameters.AddWithValue("@id", id);
        MySqlDataReader reader = command.ExecuteReader();
        while (await reader.ReadAsync())
        {
            int Id= int.Parse(reader["question_id"].ToString());
            DateTime Date= DateTime.Parse(reader["question_date"].ToString());
            string description = reader["description"].ToString();
            int custId =int.Parse(reader["cust_id"].ToString());
            //int categoryId = int.Parse(reader["category_id"].ToString());
                Question question = new Question{
                Id=Id,
                Date=Date,
                Description=description,
                CustId=custId,
                CategoryId= id
            };
            questions.Add(question);
        }
            await reader.CloseAsync();
    }
    catch (Exception ee)
    {
        throw ee;
    }
    finally
    {
        await con.CloseAsync();
    }
        return questions;
    }




    public async Task<List<QuestionAnswer>> GetQuestionAnswers(int id)
    {
        List<QuestionAnswer> questionAnswers = new List<QuestionAnswer>();
        MySqlConnection con = new MySqlConnection();
        con.ConnectionString = _conString;
    try
    {
        string query = "select agri_doctors.agri_doctor_id,(questions.description) As question,(solutions.description) As answer "+
                        "from agri_doctors ,solutions,question_solutions Inner join questions on questions.question_id = " +
                        "question_solutions.question_id where agri_doctors.agri_doctor_id=question_solutions.agri_doctor_id AND " +
                        "solutions.solution_id= question_solutions.solution_id AND agri_doctors.agri_doctor_id= @agriDoctorId";
        await con.OpenAsync();
        MySqlCommand command = new MySqlCommand(query, con);
        command.Parameters.AddWithValue("@agriDoctorId", id);
        MySqlDataReader reader = command.ExecuteReader();
        while (await reader.ReadAsync())
        {
            //int Id= int.Parse(reader["question_id"].ToString());
            string? question = reader["question"].ToString();
            string? answer = reader["answer"].ToString();

                QuestionAnswer questionAnswer = new QuestionAnswer{
                Id=id,
                Question=question,
                Answer=answer
                
            };
            questionAnswers.Add(questionAnswer);
        }
            await reader.CloseAsync();
    }
    catch (Exception ee)
    {
        throw ee;
    }
    finally
    {
        await con.CloseAsync();
    }
        return questionAnswers;
    }
    
}



