using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VVPS_UPR.Model;

namespace VVPS_UPR
{
    class ReservationManager
    {
        private readonly string _filePath;
        public List<TrainReservation> reservations { get; private set; }

        public ReservationManager(string filePath)
        {
            _filePath = filePath;

            // Create the JSON file if it doesn't exist
            if (!File.Exists(_filePath))
            {
                File.Create(_filePath).Close();
            }

            string json = File.ReadAllText(_filePath);
            reservations = JsonConvert.DeserializeObject<List<TrainReservation>>(json) ?? new List<TrainReservation>();
        }

        public void AddReservation(TrainReservation reservation)
        {

            // Add the new reservation to the list
            reservations.Add(reservation);

            // Serialize the list of reservations into JSON data and write it to the file
            string json = JsonConvert.SerializeObject(reservations);
            File.WriteAllText(_filePath, json);
        }

        public void SaveReservations()
        {
            // Serialize the list of train reservations into JSON data
            string json = JsonConvert.SerializeObject(reservations);

            // Write the JSON data to the file
            File.WriteAllText(_filePath, json);
        }

        public List<TrainReservation> GetReservationsByUser(string userName)
        {
            var _searchResults = new List<TrainReservation>();

            foreach (var reservation in reservations)
            {
                if (reservation.PassengerName == userName)
                {
                    _searchResults.Add(reservation);
                }
            }

            return _searchResults;
        }

        public void CancelReservation(TrainReservation reservation_to_cancel)
        {
            foreach(var reservation in reservations)
            {
                if (reservation == reservation_to_cancel)
                {
                    reservation.IsActive = false;
                }
            }

            SaveReservations();
        }
    }
}
