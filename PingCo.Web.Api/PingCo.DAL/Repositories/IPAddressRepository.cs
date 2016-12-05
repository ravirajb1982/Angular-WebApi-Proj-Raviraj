using PingCo.Api.Common;
using PingCo.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.DAL
{
    public class IPAddressRepository : GenericRepository<Model.IPAddress>, IIPAddressRepository
    {
        public IPAddressRepository(IPingCoDataUnitOfWork unitOfWork)
            : base(unitOfWork)
        {
        }

        public IQueryable<IPAddress> GetIPAddresses()
        {
            return this.GetAll();
        }

        public IPAddress GetIPAddressById(int id)
        {
            return this.GetById(id);
        }

        public int AddIPAddress(IPAddress inputEt)
        {
            this.Insert(inputEt);
            this.CommitAllChanges();
            return inputEt.Id;
        }

        public void UpdateIPAddress(IPAddress inputEt)
        {
            //Get entity to be updated
            IPAddress updEt = GetIPAddressById(inputEt.Id);

            updEt.IsV6 = inputEt.IsV6;
            if (Util.IsNumber(inputEt.InterfaceId)) updEt.InterfaceId = inputEt.InterfaceId;
            if (!string.IsNullOrEmpty(inputEt.Address)) updEt.Address = inputEt.Address;
            if (!string.IsNullOrEmpty(inputEt.Subnet)) updEt.Subnet = inputEt.Subnet;

            this.Update(updEt);
            this.CommitAllChanges();
        }

        public void DeleteIPAddress(int id)
        {
            this.Delete(id);
            this.CommitAllChanges();
        }
    }
}
