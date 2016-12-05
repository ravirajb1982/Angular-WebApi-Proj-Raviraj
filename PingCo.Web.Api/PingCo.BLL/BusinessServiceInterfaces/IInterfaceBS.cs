using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.BLL
{
   public interface IInterfaceBS
    {
        IQueryable<Model.Interface> GetInterfaces();
        Model.Interface GetInterfacesById(int id);
        void AddInterfaces(Model.Interface inputEt);
        void UpdateInterfaces(Model.Interface inputEt);
        void DeleteInterfaces(int id);
    }
}
