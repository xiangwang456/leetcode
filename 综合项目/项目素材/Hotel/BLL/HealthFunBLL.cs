using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class HealthFunBLL
    {

        private static readonly IHealthFun ihealthfun = Hotel.DALFactory.DataAccess.CreateHealthFun();

        //查询全部
        public List<HealthFun> GetHealthFunAll()
        {
            return ihealthfun.GetHealthFunAll();
        }

         //根据主键查询
        public HealthFun GetHealthFunById(int id)
        {
            return ihealthfun.GetHealthFunById(id);
        }

        //删除
        public bool DeleteById(int id)
        {
            return ihealthfun.DeleteById(id);
        }

        // 修改
        public bool Update(string style, string content, int id)
        {
            return ihealthfun.Update(style, content, id);
        }
    }
}
