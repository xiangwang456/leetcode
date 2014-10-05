using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IFavour
    {
        List<Favour> GetFavourAll();
        Favour GetFavourByTop1();
        Favour GetFavourById(int id);
        bool InsertFavour(Favour favour);

        bool DeleteById(int id);
        bool UpdateFavour(string title, string pic, string content, int id);
    }
}
