using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VVPS_UPR.Model
{
    public class TrainRoute
    {
        [JsonProperty("from")]
        public string From { get; private set; }
        [JsonProperty("to")]
        public string To { get; private set; }
        [JsonProperty("distance")]
        public decimal Distance { get; private set; }
        [JsonProperty("departure_time")]
        public DateTime DepartureTime { get; private set; }
        [JsonProperty("arrival_time")]
        public DateTime ArrivalTime { get; private set; }
        public TrainRoute(string from, string to, decimal distance, DateTime departureTime, DateTime arrivalTime)
        {
            From = from;
            To = to;
            Distance = distance;
            DepartureTime = departureTime;
            ArrivalTime = arrivalTime;
        }

        public decimal CalculatePrice(decimal price_per_kilometer)
        {
            return Distance * price_per_kilometer;
        }
    }
}
