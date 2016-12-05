using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.BLL
{
    public interface ILocationBS
    {
        IQueryable<Model.Location> GetLocations();
        Model.Location GetLocationsById(int id);
        void AddLocations(Model.Location inputEt);
        void UpdateLocations(Model.Location inputEt);
        void DeleteLocations(int id);
    }
}
