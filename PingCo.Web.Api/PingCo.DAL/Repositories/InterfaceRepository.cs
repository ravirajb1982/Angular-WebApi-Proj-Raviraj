using PingCo.Api.Common;
using PingCo.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.DAL
    {
        public class InterfaceRepository : GenericRepository<Model.Interface>, IInterfaceRepository
        {
            public InterfaceRepository(IPingCoDataUnitOfWork unitOfWork)
                : base(unitOfWork)
            {
            }

            public IQueryable<Interface> GetInterfaces()
            {
                return GetAll();
            }

            public Interface GetInterfaceById(int id)
            {
                return this.GetById(id);
            }

            public int AddInterface(Interface inputEt)
            {
                this.Insert(inputEt);
                this.CommitAllChanges();
                return inputEt.Id;
            }

            public void UpdateInterface(Interface inputEt)
            {
                //Get entity to be updated
               Interface updEt = GetInterfaceById(inputEt.Id);

                if (!string.IsNullOrEmpty(inputEt.Name)) updEt.Name = inputEt.Name;
                if (Util.IsNumber(inputEt.Device_Id)) updEt.Device_Id = inputEt.Device_Id;

                this.Update(updEt);
                this.CommitAllChanges();
            }

            public void DeleteInterface(int id)
            {
                this.Delete(id);
                this.CommitAllChanges();
            }
        }
    }
