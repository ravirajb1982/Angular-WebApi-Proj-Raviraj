using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.Models
{
    [MetadataType(typeof(LocationMetaData))]
    public partial class Location
    {
    }

    [MetadataType(typeof(DeviceMetaData))]
    public partial class Device
    {
    }

    [MetadataType(typeof(InterfaceMetaData))]
    public partial class Interface
    {
    }

    [MetadataType(typeof(IPAddressMetaData))]
    public partial class IPAddress
    {
    }
}
