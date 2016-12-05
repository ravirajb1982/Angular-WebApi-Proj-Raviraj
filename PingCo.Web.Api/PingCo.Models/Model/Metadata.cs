using PingCo.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.Models
{
    public partial class LocationMetaData
    {
        public LocationMetaData()
        {
            this.Devices = new HashSet<Device>();
        }
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string RackId { get; set; }
        public string RU { get; set; }

        public virtual ICollection<Device> Devices { get; set; }      

    }

    public partial class DeviceMetaData
    {
      
        public DeviceMetaData()
        {
            this.Interfaces = new HashSet<Interface>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int LocationId { get; set; }
        public string RUHeight { get; set; }

        public virtual ICollection<Interface> Interfaces { get; set; }
        public virtual Location Location { get; set; }
    }

    public partial class InterfaceMetaData
    {
        public InterfaceMetaData()
        {
            this.IPAddresses = new HashSet<IPAddress>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int Device_Id { get; set; }

        public virtual Device Device { get; set; }
        public virtual ICollection<IPAddress> IPAddresses { get; set; }
    }

    public partial class IPAddressMetaData
    {
        public int Id { get; set; }
        public bool IsV6 { get; set; }
        public int InterfaceId { get; set; }
        public string Address { get; set; }
        public string Subnet { get; set; }

        public virtual InterfaceMetaData Interface { get; set; }
    }
}
