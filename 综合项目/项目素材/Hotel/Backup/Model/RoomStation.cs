using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class RoomStation
    {
        private int _stationId;
        private string _stationName;

        public RoomStation() { }

        public int StationId
        {
            get { return _stationId; }
            set { _stationId = value; }
        }
        

        public string StationName
        {
            get { return _stationName; }
            set { _stationName = value; }
        }
    }
}
