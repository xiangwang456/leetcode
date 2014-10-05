using System;
using System.Collections.Generic;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using Hotel.IDAL;
using Hotel.Model;
using Hotel.DBUtility;

namespace Hotel.SQLServerDAL
{
    public class RoomTypeDAL:IRoomType
    {
        #region 查询全部
        public List<RoomType> GetRoomTypeAll()
        {
            string sql = "select * from [RoomType]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomType> list = new List<RoomType>();

            while (read.Read())
            {
                RoomType type = new RoomType();

                type.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    type.Name = read["Name"].ToString();
                }
                if (read["Spic"] != DBNull.Value)
                {
                    type.Spic = read["Spic"].ToString();
                }
                if (read["Pic"] != DBNull.Value)
                {
                    type.Pic = read["Pic"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    type.Content = read["Content"].ToString();
                }
                if (read["Price"] != DBNull.Value)
                {
                    type.Price = (decimal)read["Price"];
                }
                if (read["Area"] != DBNull.Value)
                {
                    type.Area = read["Area"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    type.Sj = (DateTime)read["Sj"];
                }
                if (read["IsAddBed"] != DBNull.Value)
                {
                    type.IsAddBed = (int)read["IsAddBed"];
                }
                if (read["AddBedPrice"] != DBNull.Value)
                {
                    type.AddBedPrice = (decimal)read["AddBedPrice"];
                }
                list.Add(type);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public RoomType GetRoomTypeById(int id)
        {

            string sql = "select * from [RoomType] where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Id",id);

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });
            
            RoomType type = new RoomType();        

            if (read.Read())
            {         
                type.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    type.Name = read["Name"].ToString();
                }
                if (read["Spic"] != DBNull.Value)
                {
                    type.Spic = read["Spic"].ToString();
                }
                if (read["Pic"] != DBNull.Value)
                {
                    type.Pic = read["Pic"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    type.Content = read["Content"].ToString();
                }
                if (read["Price"] != DBNull.Value)
                {
                    type.Price = (decimal)read["Price"];
                }
                if (read["Area"] != DBNull.Value)
                {
                    type.Area = read["Area"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    type.Sj = (DateTime)read["Sj"];
                }
                if (read["IsAddBed"] != DBNull.Value)
                {
                    type.IsAddBed = (int)read["IsAddBed"];
                }
                if (read["AddBedPrice"] != DBNull.Value)
                {
                    type.AddBedPrice = (decimal)read["AddBedPrice"];
                }           
            }
            read.Close();
            return type;
        }
        #endregion

        #region 插入
        public bool InsertRoom(RoomType room)
        {
            string sql = "insert into [RoomType] values(@Name,@Spic,@Pic,@Content,@Price,@Area,@Sj,@IsAddBed,@AddBedPrice)";

            SqlParameter p1 = new SqlParameter("@Name", SqlDbType.VarChar);
            p1.Value = room.Name;
            SqlParameter p2 = new SqlParameter("@Spic", SqlDbType.VarChar);
            p2.Value = room.Spic;
            SqlParameter p3 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p3.Value = room.Pic;
            SqlParameter p4 = new SqlParameter("@Content", SqlDbType.VarChar);
            p4.Value = room.Content;
            SqlParameter p5 = new SqlParameter("@Price", SqlDbType.Decimal);
            p5.Value = room.Price;
            SqlParameter p6 = new SqlParameter("@Area", SqlDbType.VarChar);
            p6.Value = room.Area;
            SqlParameter p7 = new SqlParameter("@Sj", SqlDbType.DateTime);
            p7.Value = room.Sj;
            SqlParameter p8 = new SqlParameter("@IsAddBed", SqlDbType.Int);
            p8.Value = room.IsAddBed;
            SqlParameter p9 = new SqlParameter("@AddBedPrice", SqlDbType.Decimal);
            p9.Value = room.AddBedPrice;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9});

            return flag;
        }
        #endregion

        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [RoomType] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 修改
        public bool UpdateRoom(string name, string spic, string pic, string content, decimal price, string area, int isAddBed, decimal addBedPrice, int id)
        {
            string sql = "update [RoomType] set [Name] = @Name,[Spic]=@Spic,[Pic]=@Pic,[Content]=@Content,[Price]=@Price,[Area]=@Area,[IsAddBed]=@IsAddBed,[AddBedPrice]=@AddBedPrice where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Name", SqlDbType.VarChar);
            p1.Value = name;
            SqlParameter p2 = new SqlParameter("@Spic", SqlDbType.VarChar);
            p2.Value = spic;
            SqlParameter p3 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p3.Value = pic;
            SqlParameter p4 = new SqlParameter("@Content", SqlDbType.VarChar);
            p4.Value = content;
            SqlParameter p5 = new SqlParameter("@Price", SqlDbType.Decimal);
            p5.Value = price;
            SqlParameter p6 = new SqlParameter("@Area", SqlDbType.VarChar);
            p6.Value = area;
            SqlParameter p7 = new SqlParameter("@IsAddBed", SqlDbType.Int);
            p7.Value = isAddBed;
            SqlParameter p8 = new SqlParameter("@AddBedPrice", SqlDbType.Decimal);
            p8.Value = addBedPrice;
            SqlParameter p11 = new SqlParameter("@Id", SqlDbType.Int);
            p11.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p11 });
            return flag;
        }
        #endregion

        #region 查询全部2 DropDown
        public List<RoomType> GetRoomTypeAllByDDL()
        {
            string sql = "select * from [RoomType]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomType> list = new List<RoomType>();

            //RoomType temp = new RoomType();
            //temp.Id = 0;
            //temp.Name = "所有房型";
            //list.Add(temp);

            while (read.Read())
            {
                RoomType type = new RoomType();
                type.Id = (int)read["Id"];
                type.Name = read["Name"].ToString();
                list.Add(type);
            }
            read.Close();
            return list;
        }
        #endregion
    }
}
