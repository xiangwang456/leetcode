using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;


namespace Hotel.BLL
{
    public class LeaveWordBLL
    {
        private static readonly ILeaveWord ileaveWord = Hotel.DALFactory.DataAccess.CreateLeaveWord();

        //插入
        public bool Insert(LeaveWord leaveWord)
        {
            return ileaveWord.Insert(leaveWord);
        }

        //查询所有
        public List<LeaveWord> GetLeaveWordAll()
        {
            return ileaveWord.GetLeaveWordAll();
        }

        //查询某一类型下的所有
        public List<LeaveWord> GetLeaveWordByType(string type)
        {
            return ileaveWord.GetLeaveWordByType(type);
        }

        
        //根据主键查询
        public LeaveWord GetLeaveWordById(int id)
        {
            return ileaveWord.GetLeaveWordById(id);
        }

        //删除
        public bool DeleteById(int id)
        {
            return ileaveWord.DeleteById(id);
        }
    }
}
