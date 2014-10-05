using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IHealthFun
    {
        List<HealthFun> GetHealthFunAll();
        HealthFun GetHealthFunById(int id);
        bool DeleteById(int id);
        bool Update(string style, string content, int id);
    }
}
