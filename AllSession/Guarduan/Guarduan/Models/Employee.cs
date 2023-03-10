using System.ComponentModel.DataAnnotations;

namespace Guarduan.Models;

public class Employee
{
    [Key]public int IdEmployee { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Patronymic { get; set; }
}