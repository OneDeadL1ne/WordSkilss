using System.ComponentModel.DataAnnotations;

namespace Guarduan.Models;

public class User
{
    [Key]
    public int IdUser { get; set; }
    public string Login { get; set; }
    public string Password { get; set; }
}