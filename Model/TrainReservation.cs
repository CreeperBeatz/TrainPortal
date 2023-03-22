using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VVPS_UPR.Model
{
    public class TrainReservation
    {
        public TrainReservation(TrainRoute trainRoute, decimal finalPrice, string passengerName)
        {
            TrainRoute = trainRoute;
            FinalPrice = finalPrice;
            PassengerName = passengerName;
            IsActive = true;
        }
        [JsonProperty("train_route")]
        public TrainRoute TrainRoute { get; set; }
        [JsonProperty("final_price")]
        public decimal FinalPrice { get; set; }
        [JsonProperty("passenger_name")]
        public string PassengerName { get; set; }
        [JsonProperty("is_active")]
        public bool IsActive { get; set; }
    }
}
