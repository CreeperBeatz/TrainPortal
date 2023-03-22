using System;
using System.IO;
using Newtonsoft.Json;
using System.Collections.Generic;
using VVPS_UPR.Model;


namespace VVPS_UPR
{
    internal class Program
    {
        protected static void Main(string[] args)
        {
            try
            {
                var json_config = File.ReadAllText("config.json");
                var config = JsonConvert.DeserializeObject<Config>(json_config);

                if (config == null) throw new ArgumentNullException("Config file couldn't be deserialized!");

                // TOOD change from NOT hardcoded
                decimal PRICE_PER_KILOMETER = 0.025M;

                //Load train routes json
                var json_train_routes = File.ReadAllText("trainRoutes.json");
                var deserialized_train_routes = JsonConvert.DeserializeObject<List<TrainRoute>>(json_train_routes);
                if (deserialized_train_routes == null) throw new ArgumentNullException("Config file couldn't be deserialized!");

                var trainRouteManager = new TrainRouteManager(deserialized_train_routes, PRICE_PER_KILOMETER);

                // Reservation input dummy info
                TrainRoute trainRoute = trainRouteManager.searchTrainRoutes("sofia", "varna")[0];
                decimal base_price = trainRoute.CalculatePrice(PRICE_PER_KILOMETER);
                int age = 18;
                var card = DiscountCards.FamilyCard;

                // Calculate final price
                TimeDiscountManager timeDiscounts = new TimeDiscountManager(config.TimeDiscounts);
                CardDiscounts cardDiscounts = new CardDiscounts(config.DiscountCards);
                
                var finalPrice = timeDiscounts.calculatePriceTimeDiscounts(base_price, trainRoute.DepartureTime);
                finalPrice = cardDiscounts.calculatePriceCardDiscount(card, age, finalPrice);
                Console.WriteLine($"Final price: {finalPrice}");

                // Create TrainTicket
                var ticket = new TrainReservation(trainRoute, finalPrice, "Dani");

                // Initialize the reservation manager
                ReservationManager reservationManager = new ReservationManager("trainReservations.json");
                reservationManager.AddReservation(ticket);

                Console.WriteLine("Train ticket reservation added successfully.");
                reservationManager.CancelReservation(ticket);
                Console.WriteLine("train reservation added successfully");
            }
            catch (FileNotFoundException ex)
            {
                Console.WriteLine("Config files doesn't exist in current directory!");
                Console.WriteLine(ex.Message);
            }
        }


    }
}