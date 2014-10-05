using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class RoomTypeBLL
    {
        private static readonly IRoomType iroomType = Hotel.DALFactory.DataAccess.CreateRoomType();

       //查询全部
        public List<RoomType> GetRoomTypeAll()
        {
            return iroomType.GetRoomTypeAll();
        }

        //根据主键查询
        public RoomType GetRoomTypeById(int id)
        {
            return iroomType.GetRoomTypeById(id);
        }

        //插入
        public bool InsertRoom(RoomType room)
        {
            return iroomType.InsertRoom(room);
        }

        //删除
        public bool DeleteById(int id)
        {
            return iroomType.DeleteById(id);
        }

        
        //修改
        public bool UpdateRoom(string name, string spic, string pic, string content, decimal price, string area, int isAddBed, decimal addBedPrice, int id)
        {
            return iroomType.UpdateRoom(name, spic, pic, content, price, area, isAddBed, addBedPrice,id);
        }


        //查询全部2 DropDown
        public List<RoomType> GetRoomTypeAllByDDL()
        {
            return iroomType.GetRoomTypeAllByDDL();
        }
    }
}
