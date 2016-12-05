using PingCo.DAL;
using PingCo.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.DAL
{ 
    public class LocationRepository : GenericRepository<Model.Location>, ILocationRepository
    {
        public LocationRepository(IPingCoDataUnitOfWork unitOfWork)
            : base(unitOfWork)
        {
        }

        public IQueryable<Location> GetLocations()
        {
            return this.GetAll();
        }

        public Location GetLocationById(int id)
        {
            return this.GetById(id);
        }

        public int AddLocation(Location inputEt)
        {
            this.Insert(inputEt);
            this.CommitAllChanges();
            return inputEt.Id;
        }

        public void UpdateLocation(Location inputEt)
        {
            //Get entity to be updated
            Location updEt = GetLocationById(inputEt.Id);

            if (!string.IsNullOrEmpty(inputEt.Name)) updEt.Name = inputEt.Name;
            if (!string.IsNullOrEmpty(inputEt.Address)) updEt.Address = inputEt.Address;
            if (!string.IsNullOrEmpty(inputEt.RackId)) updEt.RackId = inputEt.RackId;
            if (!string.IsNullOrEmpty(inputEt.RU)) updEt.RU = inputEt.RU;

            this.Update(updEt);
            this.CommitAllChanges();
        }

        public void DeleteLocation(int id)
        {
            this.Delete(id);
            this.CommitAllChanges();
        }
    }
}
