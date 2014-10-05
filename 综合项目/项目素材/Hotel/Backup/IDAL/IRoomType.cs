using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IRoomType
    {
        List<RoomType> GetRoomTypeAll();
        RoomType GetRoomTypeById(int id);
        bool InsertRoom(RoomType room);
        bool DeleteById(int id);
        bool UpdateRoom(string name, string spic, string pic, string content, decimal price, string area, int isAddBed, decimal addBedPrice,int id);
        List<RoomType> GetRoomTypeAllByDDL();
    }
}
