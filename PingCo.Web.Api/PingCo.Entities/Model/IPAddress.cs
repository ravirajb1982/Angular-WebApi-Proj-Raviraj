//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PingCo.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class IPAddress
    {
        public int Id { get; set; }
        public bool IsV6 { get; set; }
        public int InterfaceId { get; set; }
        public string Address { get; set; }
        public string Subnet { get; set; }
    
        public virtual Interface Interface { get; set; }
    }
}
