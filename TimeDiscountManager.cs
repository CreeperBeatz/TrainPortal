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

        public List<TimeDiscount> _timeDiscounts { get; private set; }

        public TimeDiscountManager(List<Dictionary<string, object>> config_time_discounts)
        {
            _timeDiscounts = new List<TimeDiscount> { };

            foreach(Dictionary<string, object> discount_period in config_time_discounts) { 
                var _from = DateTime.Parse((string)discount_period["from"]);
                var _to = DateTime.Parse((string)discount_period["to"]);
                var _discount = decimal.Parse(discount_period["discount"].ToString());

                _timeDiscounts.Add(new TimeDiscount(_from, _to, _discount));
            }
        }

        public decimal calculatePriceTimeDiscounts(decimal base_price, DateTime ticket_start_time)
        {
            decimal discount_rate = 0;

            // Check if current time falls within a discount period
            foreach (var discount_period in _timeDiscounts)
            {

                if (discount_period.isDiscounted(ticket_start_time))
                {
                    discount_rate = discount_period.Discount;
                    break;
                }
            }

            // Calculate discounted price
            var discounted_price = base_price * (1 - discount_rate);

            return discounted_price;
        }
    }
}
