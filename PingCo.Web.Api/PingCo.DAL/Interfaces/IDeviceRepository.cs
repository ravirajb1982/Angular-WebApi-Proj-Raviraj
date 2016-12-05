using PingCo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.DAL
{
    public interface IDeviceRepository : IGenericRepository<Model.Device>
    {
        IQueryable<Device> GetDevices();
        Device GetDeviceById(int DeviceId);
        int AddDevice(Device Device);
        void DeleteDevice(int DeviceId);
        void UpdateDevice(Device Device);
    }
}
