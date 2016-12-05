using PingCo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PingCo.DAL
{
    public interface IInterfaceRepository
    {
        IQueryable<Interface> GetInterfaces();
        Interface GetInterfaceById(int InterfaceId);
        int AddInterface(Interface Interface);
        void DeleteInterface(int InterfaceId);
        void UpdateInterface(Interface Interface);
    }
}
