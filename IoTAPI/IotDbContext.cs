using Microsoft.EntityFrameworkCore;

namespace IoTAPI
{
    public class IotDbContext:DbContext
    {
        public IotDbContext(DbContextOptions<IotDbContext> options) : base(options) { }
        public DbSet<Device> Devices { get; set; }
        
    }
}
