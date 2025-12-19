using Microsoft.AspNetCore.Mvc;
using System.Net.WebSockets;

namespace IoTAPI.Controllers
{
    public class IoTController : Controller
    {
        IotDbContext? _context = null;
        public IoTController(IotDbContext context) { 
            _context = context;
        }
        [HttpGet("Devices")]
        public IActionResult Devices() {
            var listDevices = _context.Devices.ToList();
            return Ok(listDevices);
        }
    }
}
