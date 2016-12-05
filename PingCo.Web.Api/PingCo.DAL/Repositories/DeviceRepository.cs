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
    public class DeviceRepository : GenericRepository<Model.Device>, IDeviceRepository
    {
        public DeviceRepository(IPingCoDataUnitOfWork unitOfWork)
            : base(unitOfWork)
        {
        }

        public IQueryable<Device> GetDevices()
        {
            return this.GetAll();
        }

        public Device GetDeviceById(int id)
        {
            return this.GetById(id);
        }

        public int AddDevice(Device inputEt)
        {
            this.Insert(inputEt);
            this.CommitAllChanges();
            return inputEt.Id;
        }

        public void DeleteDevice(int id)
        {
            this.Delete(id);
            this.CommitAllChanges();
        }

        public void UpdateDevice(Device inputEt)
        {
            //Get entity to be updated
            Device updEt = GetDeviceById(inputEt.Id);

            if (!string.IsNullOrEmpty(inputEt.Name)) updEt.Name = inputEt.Name;
            if (Util.IsNumber(inputEt.LocationId)) updEt.LocationId = inputEt.LocationId;
            if (!string.IsNullOrEmpty(inputEt.RUHeight)) updEt.RUHeight = inputEt.RUHeight;

            this.Update(updEt);
            this.CommitAllChanges();
        }

       

    }
}
