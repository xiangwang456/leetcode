using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class RoomBookBLL
    {
        private static readonly IRoomBook ibook = Hotel.DALFactory.DataAccess.CreateRoomBook();

        public bool insertRoomBook(RoomBook book)
        {
            return ibook.insertRoomBook(book);
        }

        //查询所有
        public List<RoomBook> GetRoomBookAll()
        {
            return ibook.GetRoomBookAll();
        }

       //根据类型查询所有
        public List<RoomBook> GetRoomBookByType(int typeId)
        {
            return ibook.GetRoomBookByType(typeId);
        }

        
        //删除
        public bool DeleteById(int id)
        {
            return ibook.DeleteById(id);
        }

        
        //根据主键查询
        public RoomBook GetRoomBookById(int id)
        {
            return ibook.GetRoomBookById(id);
        }
    }
}
