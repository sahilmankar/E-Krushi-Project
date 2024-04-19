using Ocelot.Cache.CacheManager;
using Ocelot.DependencyInjection;
using Ocelot.Middleware;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddCors();
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
 var env =builder.Environment.EnvironmentName;

builder.Configuration.AddJsonFile($"configuration.{env}.json", optional: false, reloadOnChange: true);
Console.WriteLine(env);
builder.Services.AddOcelot(builder.Configuration);
    // .AddCacheManager(x =>
    // {
    //     x.WithDictionaryHandle();
    // });

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

var frontendUrl= builder.Configuration.GetSection("Hosts").GetValue<string>("frontend");
app.UseHttpsRedirection();
app.UseCors(x => x.WithOrigins(frontendUrl).AllowAnyMethod().AllowAnyHeader().AllowCredentials());
// app.UseCors(x => x.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());


Console.WriteLine(builder.Configuration.GetSection("Hosts").GetValue<string>("frontend"));
app.UseAuthorization();

app.MapControllers();

await app.UseOcelot();

app.Run();


