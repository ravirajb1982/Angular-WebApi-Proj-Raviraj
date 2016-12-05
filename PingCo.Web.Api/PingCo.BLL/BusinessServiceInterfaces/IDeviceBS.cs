using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.BLL
{
    public interface IDeviceBS
    {
        IQueryable<Model.Device> GetDevices();
        Model.Device GetDevicesById(int id);
        void AddDevices(Model.Device inputEt);
        void UpdateDevices(Model.Device inputEt);
        void DeleteDevices(int id);
    }
}
