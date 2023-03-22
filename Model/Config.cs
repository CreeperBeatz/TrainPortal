using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace VVPS_UPR.Model
{
    internal class Config
    {
        [JsonProperty("time_discounts")]
        public List<TimeDiscount> TimeDiscounts { get; private set; }
        [JsonProperty("card_discounts")]
        public List<Dictionary<string, object>> DiscountCards { get; private set; }
        [JsonProperty("price_per_kilometer")]
        public decimal PricePerKilometer { get; private set; }

        public Config(List<TimeDiscount> timeDiscounts, List<Dictionary<string, object>> discountCards, decimal pricePerKilometer)
        {
            DiscountCards = discountCards;
            TimeDiscounts = timeDiscounts;
            PricePerKilometer = pricePerKilometer;
        }



    }
}
