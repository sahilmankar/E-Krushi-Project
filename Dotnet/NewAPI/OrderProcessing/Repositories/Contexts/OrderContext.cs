
using OrderProcessing.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;

namespace OrderProcessing.Repositories.Contexts;
public class OrderContext : DbContext
{
    private readonly IConfiguration _configuration;
    private readonly string? _conString;

    public OrderContext(IConfiguration configuration)
    {
        _configuration = configuration;
        _conString =
            this._configuration.GetConnectionString("DefaultConnection")
            ?? throw new ArgumentNullException(nameof(configuration));
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseMySQL(
            _conString ?? throw new InvalidOperationException("Connection string is null.")
        );
        optionsBuilder.LogTo(Console.WriteLine, LogLevel.Information);
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
    }
}