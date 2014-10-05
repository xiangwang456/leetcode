using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class BillToRepairBLL
    {
        private static readonly IBillToRepair irepair = Hotel.DALFactory.DataAccess.CreateBillToRepair();

        //插入
        public bool InsertBillToRepair(BillToRepair repair)
        {
            return irepair.InsertBillToRepair(repair);
        }

        //查询所有
        public List<BillToRepair> GetAll()
        {
            return irepair.GetAll();
        }

        
        //根据主键查询
        public BillToRepair GetBillToRepairById(int id)
        {
            return irepair.GetBillToRepairById(id);
        }

        //修改
        public bool UpdateRepair(string roomNum, DateTime endTime, int repaidState, string cause, int id)
        {
            return irepair.UpdateRepair(roomNum, endTime, repaidState, cause, id);
        }

        //获得ID
        public int GetId(int roomNumberId)
        {
            return irepair.GetId(roomNumberId);
        }
    }
}
