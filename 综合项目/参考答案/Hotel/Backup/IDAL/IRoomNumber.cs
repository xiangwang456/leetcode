using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IRoomNumber
    {
        List<RoomNumber> GetRoomNumberByCondition(int typeId, int stationId, int stateId);
        List<RoomNumber> GetRoomNumberByIds(string ids);
        List<RoomNumber> GetRoomNumber();
        List<RoomNumber> GetByState3();
        bool UpdateRoomNumberState(string roomNo, int state);
    }
}
