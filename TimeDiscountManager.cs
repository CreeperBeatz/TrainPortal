using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VVPS_UPR.Model;

namespace VVPS_UPR
{
    public class TimeDiscountManager
    {

        public List<TimeDiscount> TimeDiscounts { get; private set; }

        public TimeDiscountManager(List<TimeDiscount> config_time_discounts)
        {
            TimeDiscounts = config_time_discounts;
        }

        public decimal calculatePriceTimeDiscounts(decimal base_price, DateTime ticket_start_time)
        {
            var discount_period = TimeDiscounts.FirstOrDefault(x => x.isDiscounted(ticket_start_time));
            decimal discount_rate = discount_period != null ? discount_period.Discount : 0;

            // Calculate discounted price
            var discounted_price = base_price * (1 - discount_rate);

            return discounted_price;
        }
    }
}
