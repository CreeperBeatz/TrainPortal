using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VVPS_UPR
{
    internal enum DiscountCardsInternal
    {
        FamilyCardAdult,
        FamilyCardChild,
        SeniorCard
    }

    public enum DiscountCards
    {
        FamilyCard,
        SeniorCard
    }
    public class CardDiscounts
    {

        private Dictionary<DiscountCardsInternal, decimal> _discounts { get; set; }

        public CardDiscounts(List<Dictionary<string, object>> config_card_discounts)
        {
            _discounts = new Dictionary<DiscountCardsInternal, decimal>();

            foreach (var discount_card in config_card_discounts)
            {
                var card_name = (string)discount_card["name"];
                var discount = decimal.Parse(discount_card["discount"].ToString());

                switch (card_name)
                {
                    case "family_card_adult":
                        _discounts.Add(DiscountCardsInternal.FamilyCardAdult, discount);
                        break;
                    case "family_card_child":
                        _discounts.Add(DiscountCardsInternal.FamilyCardChild, discount);
                        break;
                    case "senior_card":
                        _discounts.Add(DiscountCardsInternal.SeniorCard, discount);
                        break;
                    default:
                        throw new ArgumentException("Unrecognized Card in input parameters!");
                }
            }
        }

        public decimal calculatePriceCardDiscount(DiscountCards discount_card, int lowest_age, decimal base_price)
        {
            if (discount_card == DiscountCards.FamilyCard && lowest_age < 16)
            {
                return base_price * (1 - _discounts[DiscountCardsInternal.FamilyCardChild]);
            } else if (discount_card == DiscountCards.FamilyCard && lowest_age >= 16)
            {
                return base_price * (1 - _discounts[DiscountCardsInternal.FamilyCardAdult]);
            }
            else
            {
                return base_price * (1 - _discounts[DiscountCardsInternal.SeniorCard]);
            }
        }
    }
}
