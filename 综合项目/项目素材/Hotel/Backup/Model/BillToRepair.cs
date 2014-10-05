using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class BillToRepair
    {
        private int _repairId;
        private string _roomNumber;
        private DateTime _beginTime;
        private DateTime _endTime;
        private string _cause;

        private string _operator;
        private int _repairState;  

        public BillToRepair() { }

        public BillToRepair(string roomNumber,DateTime begin,DateTime end,string cause,
            string operationor,int repairState) 
        {           
            _roomNumber = roomNumber;
            _beginTime = begin;
            _endTime = end;
            _cause = cause;
 
            _operator = operationor;
            _repairState = repairState;
        }

        public int RepairId
        {
            get { return _repairId; }
            set { _repairId = value; }
        }
       
        public string RoomNumber
        {
            get { return _roomNumber; }
            set { _roomNumber = value; }
        }     

        public DateTime BeginTime
        {
            get { return _beginTime; }
            set { _beginTime = value; }
        }       

        public DateTime EndTime
        {
            get { return _endTime; }
            set { _endTime = value; }
        }       

        public string Cause
        {
            get { return _cause; }
            set { _cause = value; }
        }
   

        public string Operator
        {
            get { return _operator; }
            set { _operator = value; }
        }

        public int RepairState
        {
            get { return _repairState; }
            set { _repairState = value; }
        }
    }
}
