using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using PingCo.Model;
using PingCo.Api;
using PingCo.BLL;

namespace PingCoWebAPI.Controllers
{
    public class DevicesController : ApiController
    {

        // GET: api/Devices
        public IQueryable<Device> GetDevices()
        {
            IDeviceBS bs = DIFactoryDesigntime.GetInstance<IDeviceBS>();
            return bs.GetDevices();
        }

        // GET: api/Devices/5
        [ResponseType(typeof(Device))]
        public IHttpActionResult GetDevice(int id)
        {
            IDeviceBS bs = DIFactoryDesigntime.GetInstance<IDeviceBS>();
            Device device = bs.GetDevicesById(id);

            if (device == null)
            {
                return NotFound();
            }

            return Ok(device);
        }

        // PUT: api/Devices/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutDevice(int id, Device device)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != device.Id)
            {
                return BadRequest();
            }

            IDeviceBS bs = DIFactoryDesigntime.GetInstance<IDeviceBS>();
            bs.UpdateDevices(device);


            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Devices
        [ResponseType(typeof(Device))]
        public IHttpActionResult PostDevice(Device device)
        {
            ModelState.Remove("device.Id");

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            IDeviceBS bs = DIFactoryDesigntime.GetInstance<IDeviceBS>();
            bs.AddDevices(device);

            return CreatedAtRoute("DefaultApi", new { id = device.Id }, device);
        }

        // DELETE: api/Devices/5
        [ResponseType(typeof(Device))]
        public IHttpActionResult DeleteDevice(int id)
        {
            IDeviceBS bs = DIFactoryDesigntime.GetInstance<IDeviceBS>();
            Device device = bs.GetDevicesById(id);

            if (device == null)
            {
                return NotFound();
            }

            bs.DeleteDevices(id);

            return Ok(device);
        }

    }
}