using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{

    public interface IBillToOwn
    {
        bool Insert(BillToOwn own);
        List<BillToOwn> GetAll();
        BillToOwn GetBillToOwnById(int id);
        bool UpdateOwn(string roomNum, DateTime endTime, int ownState, string cause, int id);
        int GetId(int roomNumberId);
    }
}
