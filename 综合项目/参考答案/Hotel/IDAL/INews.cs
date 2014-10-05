using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;


namespace Hotel.IDAL
{
    public interface INews
    {
        List<News> GetNewsByZXDT();
        List<News> GetNewsByZXDTAll();
        News GetNewsById(int id);
        bool UpdateClick(int id);
        List<News> GetNewsByYGHD();
        List<News> GetNewsByYGHDAll();
        List<News> GetNewsByYGFC();
        List<News> GetNewsByYGFCAll();
        News GetNewsYGJY();
        bool InsertNews(News news);
        List<News> GetNewsByStyle(string style);
        bool DeleteNewsById(int id);
        bool UpdateNews(string style, string title, string content,int id);

    }
}
