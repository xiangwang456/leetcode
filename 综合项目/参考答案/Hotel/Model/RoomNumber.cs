using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class RoomNumber
    {
        private int _roomId;
        private string _roomNum;
        private RoomType _roomType;
        private RoomStation _roomStation;
        private int _roomLayer;
        private RoomState _roomState;
        private string _roomTel;

        public RoomNumber() { }

        public int RoomId
        {
            get { return _roomId; }
            set { _roomId = value; }
        }
     
        public string RoomNum
        {
            get { return _roomNum; }
            set { _roomNum = value; }
        }
       

        public RoomType RoomType
        {
            get { return _roomType; }
            set { _roomType = value; }
        }
      
        public RoomStation RoomStation
        {
            get { return _roomStation; }
            set { _roomStation = value; }
        }     

        public int RoomLayer
        {
            get { return _roomLayer; }
            set { _roomLayer = value; }
        }       

        public RoomState RoomState
        {
            get { return _roomState; }
            set { _roomState = value; }
        }
     
        public string RoomTel
        {
            get { return _roomTel; }
            set { _roomTel = value; }
        }

    }
}
