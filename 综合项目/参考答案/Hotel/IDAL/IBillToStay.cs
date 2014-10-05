using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IBillToStay
    {
        bool InsertBillToStay(List<BillToStay> listBill);
        string GetRealName(string number);
        List<BillToStay> GetByRealName(string name);
    }
}
