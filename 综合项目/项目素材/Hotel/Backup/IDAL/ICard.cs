using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface ICard
    {
        Card GetCardById(int id);
        List<Card> GetCardAll();
        bool UpdateCard(string name, decimal down, decimal up, decimal discount, int id);
    }
}
