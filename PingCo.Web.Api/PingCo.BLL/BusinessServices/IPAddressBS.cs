using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PingCo.DAL;
using PingCo.Model;

namespace PingCo.BLL
{
    public class IPAddressBS:IIPAddressBS
    {
        private IIPAddressRepository _IPAddressRepository;

        public IPAddressBS(IIPAddressRepository IPAddressRepository)
        {
            if (IPAddressRepository != null)
                this._IPAddressRepository = IPAddressRepository;
        }

        public IQueryable<Model.IPAddress> GetIPAddresses()
        {
            return this._IPAddressRepository.GetIPAddresses();
        }

        public Model.IPAddress GetIPAddressesById(int id)
        {
            return this._IPAddressRepository.GetIPAddressById(id);
        }

        public void AddIPAddresses(Model.IPAddress inputEt)
        {
           this._IPAddressRepository.AddIPAddress(inputEt);
 
        }

        public void UpdateIPAddresses(Model.IPAddress inputEt)
        {
            this._IPAddressRepository.UpdateIPAddress(inputEt);
        }

        public void DeleteIPAddresses(int id)
        {
            this._IPAddressRepository.DeleteIPAddress(id);
        }
    }
}
