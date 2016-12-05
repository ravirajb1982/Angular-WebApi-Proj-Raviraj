using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PingCo.DAL;
using PingCo.Model;

namespace PingCo.BLL
{
    public class InterfaceBS:IInterfaceBS
    {
        private IInterfaceRepository _InterfaceRepository;

        public InterfaceBS(IInterfaceRepository InterfaceRepository)
        {
            if (InterfaceRepository != null)
                this._InterfaceRepository = InterfaceRepository;
        }

        public IQueryable<Model.Interface> GetInterfaces()
        {
            return this._InterfaceRepository.GetInterfaces();
        }

        public Model.Interface GetInterfacesById(int id)
        {
            return this._InterfaceRepository.GetInterfaceById(id);
        }

        public void AddInterfaces(Model.Interface inputEt)
        {
           this._InterfaceRepository.AddInterface(inputEt);
 
        }

        public void UpdateInterfaces(Model.Interface inputEt)
        {
            this._InterfaceRepository.UpdateInterface(inputEt);
        }

        public void DeleteInterfaces(int id)
        {
            this._InterfaceRepository.DeleteInterface(id);
        }
    }
}
