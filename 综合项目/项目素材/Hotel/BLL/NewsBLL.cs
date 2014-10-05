using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class NewsBLL
    {
        private static readonly INews inews = Hotel.DALFactory.DataAccess.CreateNews();

        //最新动态前五行
        public List<News> GetNewsByZXDT()
        {
            return inews.GetNewsByZXDT();
        }

        //最新动态全部
        public List<News> GetNewsByZXDTAll()
        {
            return inews.GetNewsByZXDTAll();
        }
 
        //根据主键查询
        public News GetNewsById(int id)
        {
            return inews.GetNewsById(id);
        }

        //增加点击率
        public bool UpdateClick(int id)
        {
            return inews.UpdateClick(id);
        }

        //员工互动前五行
        public List<News> GetNewsByYGHD()
        {
            return inews.GetNewsByYGHD();
        }
        
        //员工互动所有
        public List<News> GetNewsByYGHDAll()
        {
            return inews.GetNewsByYGHDAll();
        }

        //员工风采前5行
        public List<News> GetNewsByYGFC()
        {
            return inews.GetNewsByYGFC();
        }

        //所有员工风采
        public List<News> GetNewsByYGFCAll()
        {
            return inews.GetNewsByYGFCAll();
        }

        //员工精英第一条
        public News GetNewsYGJY()
        {
            return inews.GetNewsYGJY();
        }

         //插入
        public bool InsertNews(News news)
        {
            return inews.InsertNews(news);
        }
         
        //查询某一类型的所有新闻     
        public List<News> GetNewsByStyle(string style)
        {
            return inews.GetNewsByStyle(style);
        }

        //删除
        public bool DeleteNewsById(int id)
        {
            return inews.DeleteNewsById(id);
        }

        //修改
        public bool UpdateNews(string style, string title, string content, int id)
        {
            return inews.UpdateNews(style, title, content, id);
        }
    }
}
