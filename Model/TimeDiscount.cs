using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VVPS_UPR.Model
{
    public class TimeDiscount
    {
        [JsonProperty("from")]
        public DateTime From { get; set; }
        [JsonProperty("to")]
        public DateTime To { get; set; }
        [JsonProperty("discount")]
        public decimal Discount { get; set; }

        public TimeDiscount(DateTime from, DateTime to, decimal discount)
        {
            From = from;
            To = to;
            Discount = discount;
        }

        public bool isDiscounted(DateTime ticketStart)
        {
            TimeSpan timeOfDay = ticketStart.TimeOfDay;
            TimeSpan fromTime = From.TimeOfDay;
            TimeSpan toTime = To.TimeOfDay;

            return timeOfDay >= fromTime && timeOfDay <= toTime;
        }
    }
}
