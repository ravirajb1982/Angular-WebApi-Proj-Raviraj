using PingCo.Model;
using System;

namespace PingCo.DAL
{ 
    public interface IPingCoDataUnitOfWork : IDisposable
    {
        PingCoEntities Context { get; set; }
        void Commit();
        bool LazyLoadingEnabled { get; set; }
    }

}
