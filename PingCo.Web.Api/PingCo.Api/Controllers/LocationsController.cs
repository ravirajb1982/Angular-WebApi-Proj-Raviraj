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
    public class LocationsController : ApiController
    {
        // GET: api/Locations
        public IQueryable<Location> GetLocations()
        {
            ILocationBS bs = DIFactoryDesigntime.GetInstance<ILocationBS>();
            return bs.GetLocations();
        }

        // GET: api/Locations/5
        [ResponseType(typeof(Location))]
        public IHttpActionResult GetLocation(int id)
        {
            ILocationBS bs = DIFactoryDesigntime.GetInstance<ILocationBS>();
            Location location = bs.GetLocationsById(id);
            if (location == null)
            {
                return NotFound();
            }

            return Ok(location);
        }

        // PUT: api/Locations/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutLocation(int id, Location location)
        {
            
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != location.Id)
            {
                return BadRequest();
            }           

                ILocationBS bs = DIFactoryDesigntime.GetInstance<ILocationBS>();
                bs.UpdateLocations(location);


            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Locations
        [ResponseType(typeof(Location))]
        public IHttpActionResult PostLocation(Location location)
        {
            ModelState.Remove("location.Id");

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            ILocationBS bs = DIFactoryDesigntime.GetInstance<ILocationBS>();
            bs.AddLocations(location);

            return CreatedAtRoute("DefaultApi", new { id = location.Id }, location);
        }

        // DELETE: api/Locations/5
        [ResponseType(typeof(Location))]
        public IHttpActionResult DeleteLocation(int id)
        {
            ILocationBS bs = DIFactoryDesigntime.GetInstance<ILocationBS>();        
            Location location =  bs.GetLocationsById(id);

            if (location == null)
            {
                return NotFound();
            }

            bs.DeleteLocations(id);

            return Ok(location);
        }

    }
}