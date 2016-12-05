using PingCo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.DAL
{ 
    public interface ILocationRepository :IGenericRepository<Model.Location>
    {
        IQueryable<Location> GetLocations();
        Location GetLocationById(int LocationId);
        int AddLocation(Location Location);
        void DeleteLocation(int LocationId);
        void UpdateLocation(Location Location);
    }
}
