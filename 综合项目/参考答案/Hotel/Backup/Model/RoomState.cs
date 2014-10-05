using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class RoomState
    {
        private int _roomStateId;
        private string _roomStateName;

        public RoomState() { }

        public int RoomStateId
        {
            get { return _roomStateId; }
            set { _roomStateId = value; }
        }     

        public string RoomStateName
        {
            get { return _roomStateName; }
            set { _roomStateName = value; }
        }
    }
}
