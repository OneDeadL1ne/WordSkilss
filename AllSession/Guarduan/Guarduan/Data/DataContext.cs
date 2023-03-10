using Guarduan.Models;
using Microsoft.EntityFrameworkCore;

namespace Guarduan.Data;

public class DataContext : DbContext
{
    public DbSet<User> User { get; set; }
    public DbSet<Employee> Employee { get; set; }
    public DataContext()
    {
        Database.EnsureCreated();
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        base.OnConfiguring(optionsBuilder);
        optionsBuilder.UseNpgsql("Host=10.54.6.15; Port=5432; Database=GuarduanDB; Username=postgres; Password=12345;");
    }
}