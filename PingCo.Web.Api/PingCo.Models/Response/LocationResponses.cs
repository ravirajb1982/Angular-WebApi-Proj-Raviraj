using System;
using System.Collections.Generic;

namespace PingCo.Models
{ 
    public class LocationListResponse
    {
        public Locations Locations { get; set; }
    }
    
    public class Locations : List<Location> { }

    public class AddLocationResponse
    {
        public int LocationID { get; set; }
    }

    public class AddLocationsResponse
    {
        public List<int> LocationIdList { get; set; }
    }
    
}
