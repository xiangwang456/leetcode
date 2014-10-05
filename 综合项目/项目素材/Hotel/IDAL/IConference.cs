using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IConference
    {
        bool UpdateConference(string content,int id);
        Conference GetConference();
    }
}
