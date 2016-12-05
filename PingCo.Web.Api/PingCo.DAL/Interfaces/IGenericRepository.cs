    using System;
    using System.Linq;
    using System.Linq.Expressions;
    using System.Collections.Generic;

    namespace PingCo.DAL
    {
        public interface IGenericRepository<TEntity> where TEntity : class
        {
            IQueryable<TEntity> GetAll();
            TEntity GetById(object id);
            IQueryable<TEntity> GetIQueryable();
            object Insert(TEntity entity);
            void Delete(object id);
            void Delete(TEntity entity);
            void Update(TEntity entity);
            void CommitAllChanges();
            void Dispose();
        }

    }


