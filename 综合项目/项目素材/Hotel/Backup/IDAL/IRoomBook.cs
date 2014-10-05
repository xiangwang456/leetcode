using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IRoomBook
    {
        bool insertRoomBook(RoomBook book);
        List<RoomBook> GetRoomBookAll();
        List<RoomBook> GetRoomBookByType(int typeId);
        bool DeleteById(int id);
        RoomBook GetRoomBookById(int id);
    }
}
