using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class BillToOwnBLL
    {
        private static readonly IBillToOwn iown = Hotel.DALFactory.DataAccess.CreateBillToOwn();

        //插入
        public bool Insert(BillToOwn own)
        {
            return iown.Insert(own);
        }


        //查询全部
        public List<BillToOwn> GetAll()
        {
            return iown.GetAll();
        }

        //根据主键查询
        public BillToOwn GetBillToOwnById(int id)
        {
            return iown.GetBillToOwnById(id);
        }

        //修改
        public bool UpdateOwn(string roomNum, DateTime endTime, int ownState, string cause, int id)
        {
            return iown.UpdateOwn(roomNum, endTime, ownState, cause, id);
        }

        //获得ID
        public int GetId(int roomNumberId)
        {
            return iown.GetId(roomNumberId);
        }
    }
}
