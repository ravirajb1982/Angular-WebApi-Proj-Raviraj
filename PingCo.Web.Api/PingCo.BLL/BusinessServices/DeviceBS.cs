using PingCo.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.BLL
{ 
    public class DeviceBS : IDeviceBS
    {
        private IDeviceRepository _DeviceRepository;

        public DeviceBS(IDeviceRepository DeviceRepository)
        {
            if (DeviceRepository != null)
                this._DeviceRepository = DeviceRepository;
        }

        public IQueryable<Model.Device> GetDevices()
        {
            return this._DeviceRepository.GetDevices();
        }

        public Model.Device GetDevicesById(int id)
        {
            return this._DeviceRepository.GetDeviceById(id);
        }

        public void AddDevices(Model.Device inputEt)
        {
            this._DeviceRepository.AddDevice(inputEt);

        }

        public void UpdateDevices(Model.Device inputEt)
        {
            this._DeviceRepository.UpdateDevice(inputEt);
        }

        public void DeleteDevices(int id)
        {
            this._DeviceRepository.DeleteDevice(id);
        }
    }
}
