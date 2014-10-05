using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IIntent
    {
        List<Intent> GetIntentAll();
        Intent GetIntentById(int id);
        List<Intent> GetIntentByStyle(string style);
        bool DeleteById(int id);
        bool InsertIntent(Intent intent);
        bool UpdateIntent(string type,string title,string pic,string content,int id);
    }
}
