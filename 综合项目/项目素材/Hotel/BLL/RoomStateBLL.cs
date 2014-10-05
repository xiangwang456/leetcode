using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class RoomStateBLL
    {
        private static readonly IRoomState istate = Hotel.DALFactory.DataAccess.CreateRoomState();

        //查询所有
        public List<RoomState> GetRoomStateAll()
        {
            return istate.GetRoomStateAll();
        }
    }
}
