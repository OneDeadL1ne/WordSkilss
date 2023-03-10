using System.Data;
using Guarduan.Data;
using Guarduan.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualBasic.CompilerServices;
using Npgsql;
using Npgsql.Internal;

namespace Guarduan.Controllers;
[Route("api/[controller]")]
[Controller]
public class UserController : Controller
{
    [Route("GetUser")]
    [HttpGet]
    public string GetUser()
    {
        string data;
        using (DataContext db = new DataContext())
        {
            data = db.User.ToString();
        }
        
       
        
        return data;
    }
    
    [Route("GetEpmloyee")]
    [HttpGet]
    public string GetEpmloyee()
    {
        string data;
        using (DataContext db = new DataContext())
        {
            data = db.Employee.ToString();
        }
        
       
        
        return data;
    }
}