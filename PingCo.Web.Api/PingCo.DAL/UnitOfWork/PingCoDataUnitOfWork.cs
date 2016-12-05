using PingCo.Model;
using System;
using System.Configuration;
using System.Data.Entity;

namespace PingCo.DAL
{
    public class PingCoDataUnitOfWork : IPingCoDataUnitOfWork
    {
        private PingCoEntities context;
        public PingCoDataUnitOfWork()
        {
            context = new PingCoEntities();
        }

        public PingCoEntities Context
        {
            get
            {
                return this.context;
            }
            set
            {
                this.context = value;
            }
        }

        public void Commit()
        {            
            this.Context.SaveChanges();         
        }

        public bool LazyLoadingEnabled
        {
            get { return this.Context.Configuration.LazyLoadingEnabled; }
            set { this.Context.Configuration.LazyLoadingEnabled = value; }
        }

        public void Dispose()
        {
            this.Context.Dispose();
        }
    }
}
