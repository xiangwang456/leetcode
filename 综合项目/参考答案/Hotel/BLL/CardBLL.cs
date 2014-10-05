using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class CardBLL
    {
        private static readonly ICard icard = Hotel.DALFactory.DataAccess.CreateCard();
        
        //查询所有
        public List<Card> GetCardAll()
        {
            return icard.GetCardAll();
        }

        //修改
        public bool UpdateCard(string name, decimal down, decimal up, decimal discount, int id)
        {
            return icard.UpdateCard(name, down, up, discount, id);
        }
    }
}
