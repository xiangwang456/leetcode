using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class ConferenceBLL
    {
        private static readonly IConference iconference = Hotel.DALFactory.DataAccess.CreateConference();

        //修改
        public bool UpdateConference(string content, int id)
        {
            return iconference.UpdateConference(content, id);
        }

        //成员
        public Conference GetConference()
        {
            return iconference.GetConference();
        }
    }
}
