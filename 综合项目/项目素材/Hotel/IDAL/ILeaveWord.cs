using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface ILeaveWord
    {
        bool Insert(LeaveWord leaveWord);
        List<LeaveWord> GetLeaveWordAll();
        List<LeaveWord> GetLeaveWordByType(string type);
        LeaveWord GetLeaveWordById(int id);
        bool DeleteById(int id);
    }
}
