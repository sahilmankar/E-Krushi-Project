using Transflower.EKrushi.ShoppingCartService.Repositories;
using Transflower.EKrushi.ShoppingCartService.Repositories.Interfaces;
using Transflower.EKrushi.ShoppingCartService.Interfaces;
using ShoppingCartService.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
builder.Services.AddCors();
builder.Services.AddDistributedMemoryCache();
builder.Services.AddSession(
    (options) =>
    {
        options.IdleTimeout = TimeSpan.FromMinutes(15);
        options.Cookie.HttpOnly = true;
        options.Cookie.IsEssential = true;
        options.Cookie.SameSite = SameSiteMode.None;
        options.Cookie.SecurePolicy=CookieSecurePolicy.Always;
    }
);

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddScoped<ICartRepository, CartRepository>();
builder.Services.AddScoped<ICartService, CartService>();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

var frontendUrl= builder.Configuration.GetSection("Hosts").GetValue<string>("frontend");

app.UseCors(x => x.WithOrigins(frontendUrl).AllowAnyMethod().AllowAnyHeader().AllowCredentials());
// app.UseCors(x => x.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());

Console.WriteLine(builder.Configuration.GetSection("Hosts").GetValue<string>("frontend"));app.UseSession();


app.MapControllers();

app.Run();
