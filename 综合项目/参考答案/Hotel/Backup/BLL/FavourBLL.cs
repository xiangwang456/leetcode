using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class FavourBLL
    {
        private static readonly IFavour ifavour = Hotel.DALFactory.DataAccess.CreateFavour();

        //查询全班
        public List<Favour> GetFavourAll()
        {
            return ifavour.GetFavourAll();
        }

        //Home.aspx用
        public Favour GetFavourByTop1()
        {
            return ifavour.GetFavourByTop1();
        }

        //根据主键查询
        public Favour GetFavourById(int id)
        {
            return ifavour.GetFavourById(id);
        }

        //插入
        public bool InsertFavour(Favour favour)
        {
            return ifavour.InsertFavour(favour);
        }

        //删除
        public bool DeleteById(int id)
        {
            return ifavour.DeleteById(id);
        }

        //修改
        public bool UpdateFavour(string title, string pic, string content, int id)
        {
            return ifavour.UpdateFavour(title, pic, content, id);
        }
    }
}
