using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IBillToRepair
    {
        bool InsertBillToRepair(BillToRepair repair);
        List<BillToRepair> GetAll();
        BillToRepair GetBillToRepairById(int id);
        bool UpdateRepair(string roomNum,DateTime endTime,int repaidState,string cause,int id);
        int GetId(int roomNumberId);
    }
}
