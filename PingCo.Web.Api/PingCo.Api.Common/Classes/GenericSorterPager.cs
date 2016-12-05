using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using PingCo.Model;

namespace PingCo.Api.Common
{
    public static class GenericSorterPager
    {


        public static IQueryable<T> AsPagedQueryable<T>(IQueryable<T> source, int pageIndex, int pageSize)
        {
            return source.Skip(pageIndex * pageSize).Take(pageSize);
        }



    }

    public class PagedResultSet<T>
    {
        public int TotalCount { get; set; }
        public T PagedData { get; set; }
    }

    public enum ChildLoad
    {
        Include,
        None
    }
}