using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VVPS_UPR.Model
{
    public class TimeDiscount
    {
        public DateTime From { get; set; }
        public DateTime To { get; set; }
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
