using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class WineBarBLL
    {
        private static readonly IWineBar ibar = Hotel.DALFactory.DataAccess.CreateWineBar();

        //查询全部
        public List<WineBar> GetWineBarAll()
        {
            return ibar.GetWineBarAll();
        }

        //根据主键查询
        public WineBar GetWineBarById(int id)
        {
            return ibar.GetWineBarById(id);

        }

        //插入
        public bool InsertWineBar(WineBar bar)
        {
            return ibar.InsertWineBar(bar);
        }

        //删除
        public bool DeleteById(int id)
        {
            return ibar.DeleteById(id);
        }

        //修改
        public bool Update(string name, string spic, string pic, string content, int id)
        {
            return ibar.Update(name, spic, pic, content, id);
        }
    }
}
