namespace AuthenticationService.Models;
public class User
{
    public int UserId { get; set; }
    public string? Email { get; set; }
    public string? Password { get; set; }

    public string? ContactNumber { get; set; } 
}