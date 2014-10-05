using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class StyleBLL
    {
        private static readonly IStyle istyle = Hotel.DALFactory.DataAccess.CreateStyle();

        //根据主键查询
        public Style GetStyleById(int id)
        {
            return istyle.GetStyleById(id);
        }

        //查询所有
        public List<Style> GetStyleAll()
        {
            return istyle.GetStyleAll();
        }
    }
}
