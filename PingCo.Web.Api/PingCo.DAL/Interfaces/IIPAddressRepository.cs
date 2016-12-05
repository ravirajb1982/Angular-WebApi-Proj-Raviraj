using PingCo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.DAL
{
    public interface IIPAddressRepository
    {
        IQueryable<IPAddress> GetIPAddresses();
        IPAddress GetIPAddressById(int IPAddressId);
        int AddIPAddress(IPAddress IPAddress);
        void DeleteIPAddress(int IPAddressId);
        void UpdateIPAddress(IPAddress IPAddress);
    }
}
