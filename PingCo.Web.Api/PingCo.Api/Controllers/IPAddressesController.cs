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
using PingCo.BLL;
using PingCo.Api;

namespace PingCoWebAPI.Controllers
{
    public class IPAddressesController : ApiController
    {

        //GET: api/IPAddresss
        public IQueryable<PingCo.Model.IPAddress> GetIPAddresses()
        {
            IIPAddressBS bs = DIFactoryDesigntime.GetInstance<IIPAddressBS>();
            return bs.GetIPAddresses();
        }

        // GET: api/IPAddresss/5
        [ResponseType(typeof(PingCo.Model.IPAddress))]
        public IHttpActionResult GetIPAddress(int id)
        {
            IIPAddressBS bs = DIFactoryDesigntime.GetInstance<IIPAddressBS>();
            PingCo.Model.IPAddress IPAddress = bs.GetIPAddressesById(id);

            if (IPAddress == null)
            {
                return NotFound();
            }

            return Ok(IPAddress);
        }

        // PUT: api/IPAddresss/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutIPAddress(int id, PingCo.Model.IPAddress IPAddress)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != IPAddress.Id)
            {
                return BadRequest();
            }

            IIPAddressBS bs = DIFactoryDesigntime.GetInstance<IIPAddressBS>();
            bs.UpdateIPAddresses(IPAddress);


            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/IPAddresss
        [ResponseType(typeof(PingCo.Model.IPAddress))]
        public IHttpActionResult PostIPAddress(PingCo.Model.IPAddress IPAddress)
        {
            ModelState.Remove("IPAddress.Id");

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            IIPAddressBS bs = DIFactoryDesigntime.GetInstance<IIPAddressBS>();
            bs.AddIPAddresses(IPAddress);

            return CreatedAtRoute("DefaultApi", new { id = IPAddress.Id }, IPAddress);
        }

        // DELETE: api/IPAddresss/5
        [ResponseType(typeof(PingCo.Model.IPAddress))]
        public IHttpActionResult DeleteIPAddress(int id)
        {
            IIPAddressBS bs = DIFactoryDesigntime.GetInstance<IIPAddressBS>();
            PingCo.Model.IPAddress IPAddress = bs.GetIPAddressesById(id);

            if (IPAddress == null)
            {
                return NotFound();
            }

            bs.DeleteIPAddresses(id);

            return Ok(IPAddress);
        }

    }
}