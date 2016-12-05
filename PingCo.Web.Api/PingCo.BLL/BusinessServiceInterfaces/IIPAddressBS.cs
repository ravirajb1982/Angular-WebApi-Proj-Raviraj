using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.BLL
{
    public interface IIPAddressBS
    {
        IQueryable<Model.IPAddress> GetIPAddresses();
        Model.IPAddress GetIPAddressesById(int id);
        void AddIPAddresses(Model.IPAddress inputEt);
        void UpdateIPAddresses(Model.IPAddress inputEt);
        void DeleteIPAddresses(int id);
    }
}
