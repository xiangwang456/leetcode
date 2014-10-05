using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IWineBar
    {
        List<WineBar> GetWineBarAll();
        WineBar GetWineBarById(int id);
        bool InsertWineBar(WineBar bar);
        bool DeleteById(int id);
        bool Update(string name,string spic,string pic,string content,int id);
    }
}
