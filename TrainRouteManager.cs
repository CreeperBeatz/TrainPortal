using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VVPS_UPR.Model;

namespace VVPS_UPR
{
    public class TrainRouteManager
    {
        public List<TrainRoute> TrainRoutes;
        public decimal PricePerKilometer { get; private set; }
        public TrainRouteManager(List<TrainRoute> trainRoutes, decimal pricePerKilometer) 
        {
            TrainRoutes = trainRoutes;
            PricePerKilometer = pricePerKilometer;
        }

        public List<TrainRoute> searchTrainRoutes(string from_destination,  string to_destination, TimeSpan? from_time = null, TimeSpan? to_time = null) 
        { 
            var searchResults = new List<TrainRoute>();

            foreach (var route in TrainRoutes)
            {
                if (from_destination.Equals(route.From) && to_destination.Equals(route.To))
                {
                    if (from_time.HasValue && to_time.HasValue)
                    {
                        var departure_time_route = route.DepartureTime.TimeOfDay;
                        if (departure_time_route < from_time && departure_time_route < to_time)
                        {
                            searchResults.Add(route);
                        }
                    }
                    else
                    {
                        searchResults.Add(route);
                    }
                }
            }
            return searchResults;
        }
    }
}
