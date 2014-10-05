using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IPriceList
    {
        PriceList GetPriceList();
        bool UpdatePrice(string content, int id);
    }
}
