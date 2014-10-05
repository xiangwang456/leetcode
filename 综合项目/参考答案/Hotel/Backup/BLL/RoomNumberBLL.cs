using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class RoomNumberBLL
    {
        private static readonly IRoomNumber inum = Hotel.DALFactory.DataAccess.CreateRoomNumber();

        //前台查询
        public List<RoomNumber> GetRoomNumberByCondition(int typeId, int stationId, int stateId)
        {
            return inum.GetRoomNumberByCondition(typeId, stationId, stateId);
        }

        //入住单
        public List<RoomNumber> GetRoomNumberByIds(string ids)
        {
            return inum.GetRoomNumberByIds(ids);
        }


        //返回所有房号，维修用
        public List<RoomNumber> GetRoomNumber()
        {
            return inum.GetRoomNumber();
        }

        //G_Shoping.aspx
        public List<RoomNumber> GetByState3()
        {
            return inum.GetByState3();
        }

        //改变房间状态 BillToHotelByShow.aspx
        public bool UpdateRoomNumberState(string roomNo, int state)
        {
            return inum.UpdateRoomNumberState(roomNo, state);
        }
    }
}
