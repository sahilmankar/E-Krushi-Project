using E_krushiApp.Models;
using E_krushiApp.Repositories.Interface;
using E_krushiApp.Services.Interface;
namespace E_krushiApp.Services;
public class UserService : IUserService

{
    private readonly IUserRepository _repo ;
   
    public UserService(IUserRepository repo){
        _repo=repo;
    }
    public List<User> GetAllUsers()=>_repo.GetAllUsers();

    public User GetById(int id)=>_repo.GetById(id);

    public bool InsertUser(User user)=>_repo.InsertUser(user);

    public bool UpdateUser(User user)=>_repo.InsertUser(user);

    public bool DeleteUser(int id)=>_repo.DeleteUser(id);
    }
