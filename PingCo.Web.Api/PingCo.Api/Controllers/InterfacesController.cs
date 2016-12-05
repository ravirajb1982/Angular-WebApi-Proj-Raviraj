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
    public class InterfacesController : ApiController
    {
        // GET: api/Interfaces
        public IQueryable<Interface> GetInterfaces()
        {
            IInterfaceBS bs = DIFactoryDesigntime.GetInstance<IInterfaceBS>();
            return bs.GetInterfaces();
        }

        // GET: api/Interfaces/5
        [ResponseType(typeof(Interface))]
        public IHttpActionResult GetInterface(int id)
        {
            IInterfaceBS bs = DIFactoryDesigntime.GetInstance<IInterfaceBS>();
            Interface _interface = bs.GetInterfacesById(id);
            if (_interface == null)
            {
                return NotFound();
            }

            return Ok(_interface);
        }

        // PUT: api/Interfaces/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutLocation(int id, Interface _interface)
        {

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != _interface.Id)
            {
                return BadRequest();
            }

            IInterfaceBS bs = DIFactoryDesigntime.GetInstance<IInterfaceBS>();
            bs.UpdateInterfaces(_interface);


            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Interfaces
        [ResponseType(typeof(Interface))]
        public IHttpActionResult PostInterface(Interface _interface)
        {
            ModelState.Remove("_interface.Id");

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            IInterfaceBS bs = DIFactoryDesigntime.GetInstance<IInterfaceBS>();
            bs.AddInterfaces(_interface);

            return CreatedAtRoute("DefaultApi", new { id = _interface.Id }, _interface);
        }

        // DELETE: api/Interfaces/5
        [ResponseType(typeof(Interface))]
        public IHttpActionResult DeleteInterface(int id)
        {
            IInterfaceBS bs = DIFactoryDesigntime.GetInstance<IInterfaceBS>();
            Interface _interface = bs.GetInterfacesById(id);

            if (_interface == null)
            {
                return NotFound();
            }

            bs.DeleteInterfaces(id);

            return Ok(_interface);
        }

    }
}