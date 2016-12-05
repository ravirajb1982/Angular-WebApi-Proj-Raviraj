using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PingCo.DAL;
using PingCo.Model;

namespace PingCo.BLL
{
    public class LocationBS:ILocationBS
    {
        private ILocationRepository _LocationRepository;

        public LocationBS(ILocationRepository LocationRepository)
        {
            if (LocationRepository != null)
                this._LocationRepository = LocationRepository;
        }

        public IQueryable<Model.Location> GetLocations()
        {
            return this._LocationRepository.GetLocations();
        }

        public Model.Location GetLocationsById(int id)
        {
            return this._LocationRepository.GetLocationById(id);
        }

        public void AddLocations(Model.Location inputEt)
        {
           this._LocationRepository.AddLocation(inputEt);
 
        }

        public void UpdateLocations(Model.Location inputEt)
        {
            this._LocationRepository.UpdateLocation(inputEt);
        }

        public void DeleteLocations(int id)
        {
            this._LocationRepository.DeleteLocation(id);
        }
    }
}
