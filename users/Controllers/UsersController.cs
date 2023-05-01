
using E_krushiApp.Models;
using E_krushiApp.Services.Interface;
using Microsoft.AspNetCore.Mvc;
namespace users.Controllers;

[ApiController]
[Route("[controller]")]
public class UsersController : ControllerBase
{
   
    private readonly IUserService _service;

    public UsersController(IUserService service)
    {
        _service = service;
    }

    [HttpGet]
    [Route("getall")]
    public IEnumerable<User> GetAll()
    {
        
    List<User> users = _service.GetAllUsers();

       return users;
       
    }

 [HttpGet]
 [Route("getbyid/{id}")]
    public User GetById(int id)
    {
        User user = _service.GetById(id);


        return user;
    }

    [HttpPost]
    [Route("InsertUser")]
       public bool InsertUser(User user)
    {
        bool status = _service.InsertUser(user);


        return status;
    }

   [HttpPut]
   [Route("updateUser")]

   public bool UpdateUser(User user){
    bool status = _service.UpdateUser(user);

    return status;
   }
}
