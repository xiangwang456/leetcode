using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class RoomStationBLL
    {
        private static readonly IRoomStation istation = Hotel.DALFactory.DataAccess.CreateRoomStation();

        //查询所有
        public List<RoomStation> GetRoomStationAll()
        {
            return istation.GetRoomStationAll();
        }
    }
}
