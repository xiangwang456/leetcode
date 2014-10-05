using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class IntentBLL
    {
        private static readonly IIntent iintent = Hotel.DALFactory.DataAccess.CreateIntent();

        //查询全部
        public List<Intent> GetIntentAll()
        {
            return iintent.GetIntentAll();
        }

        //根据主键查询
        public Intent GetIntentById(int id)
        {
            return iintent.GetIntentById(id);
        }

        //查询某一类
        public List<Intent> GetIntentByStyle(string style)
        {
            return iintent.GetIntentByStyle(style);
        }

        //删除
        public bool DeleteById(int id)
        {
            return iintent.DeleteById(id);
        }

        //插入
        public bool InsertIntent(Intent intent)
        {
            return iintent.InsertIntent(intent);
        }

        //修改
        public bool UpdateIntent(string type, string title, string pic, string content, int id)
        {
            return iintent.UpdateIntent(type, title, pic, content, id);
        }
    }
}
