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
    public class BillToStayDAL:IBillToStay
    {
        #region 插入客人入住单
        public bool InsertBillToStay(List<BillToStay> listBill)
        {         
            List<SqlCommand> listCom = new List<SqlCommand>();
            SqlCommand com=null;
            foreach (BillToStay bill in listBill)
            {
              
                string sql = "insert into [BillToStay] values(@RealName,@CertificateType,@CertificateNo,@Sex,@CountryArea,@ProviceArea," +
                    "@Address,@CustomerType,@CustomerSource,@CustomerMark,@Tel,@ComeDate,@GoDate,@RoomNo,@RoomType,@PriceBase,@Discount," +
                    "@PriceByDiscount,@RecordCount,@PayType,@YinShouMoney,@Deposit,@ShiShouMoney,@PayMark,@Operationer,@CardNo,@AddBedPrice,@AddBedCount,@AddBedPriceSum)";
                SqlParameter p1 = new SqlParameter("@RealName", SqlDbType.VarChar);
                p1.Value = bill.RealName;
                SqlParameter p2 = new SqlParameter("@CertificateType", SqlDbType.VarChar);
                p2.Value = bill.CertificateType;
                SqlParameter p3 = new SqlParameter("@CertificateNo", SqlDbType.VarChar);
                p3.Value = bill.CertificateNo;
                SqlParameter p4 = new SqlParameter("@Sex", SqlDbType.VarChar);
                p4.Value = bill.Sex;
                SqlParameter p5 = new SqlParameter("@CountryArea", SqlDbType.VarChar);
                p5.Value = bill.CountryArea;
                SqlParameter p6 = new SqlParameter("@ProviceArea", SqlDbType.VarChar);
                p6.Value = bill.ProviceArea;
                SqlParameter p7 = new SqlParameter("@Address", SqlDbType.VarChar);
                p7.Value = bill.Address;
                SqlParameter p8 = new SqlParameter("@CustomerType", SqlDbType.VarChar);
                p8.Value = bill.CustomerType;
                SqlParameter p9 = new SqlParameter("@CustomerSource", SqlDbType.VarChar);
                p9.Value = bill.CustomerSource;
                SqlParameter p10 = new SqlParameter("@CustomerMark", SqlDbType.VarChar);
                p10.Value = bill.CustomerMark;
                SqlParameter p11 = new SqlParameter("@Tel", SqlDbType.VarChar);
                p11.Value = bill.Tel;
                SqlParameter p12 = new SqlParameter("@ComeDate", SqlDbType.DateTime);
                p12.Value = bill.ComeDate;
                SqlParameter p13 = new SqlParameter("@GoDate", SqlDbType.DateTime);
                p13.Value = bill.GoDate;
                SqlParameter p14 = new SqlParameter("@RoomNo", SqlDbType.VarChar);
                p14.Value = bill.RoomNo;
                SqlParameter p15 = new SqlParameter("@RoomType", SqlDbType.VarChar);
                p15.Value = bill.RoomType;
                SqlParameter p16 = new SqlParameter("@PriceBase", SqlDbType.Money);
                p16.Value = bill.PriceBase;
                SqlParameter p17 = new SqlParameter("@Discount", SqlDbType.VarChar);
                p17.Value = bill.Discount;
                SqlParameter p18 = new SqlParameter("@PriceByDiscount", SqlDbType.Money);
                p18.Value = bill.PriceByDiscount;
                SqlParameter p20 = new SqlParameter("@RecordCount", SqlDbType.Int);
                p20.Value = bill.RecordCount;
                SqlParameter p21 = new SqlParameter("@PayType", SqlDbType.VarChar);
                p21.Value = bill.PayType;
                SqlParameter p22 = new SqlParameter("@YinShouMoney", SqlDbType.Money);
                p22.Value = bill.YinShouMoney;
                SqlParameter p23 = new SqlParameter("@Deposit", SqlDbType.Money);
                p23.Value = bill.Deposit;
                SqlParameter p24 = new SqlParameter("@ShiShouMoney", SqlDbType.Money);
                p24.Value = bill.ShiShouMoney;
                SqlParameter p25 = new SqlParameter("@PayMark", SqlDbType.VarChar);
                p25.Value = bill.PayMark;
                SqlParameter p28 = new SqlParameter("@Operationer", SqlDbType.VarChar);
                p28.Value = bill.Operationer;
                SqlParameter p29 = new SqlParameter("@CardNo", SqlDbType.VarChar);
                p29.Value = bill.CardNo;
                SqlParameter p30 = new SqlParameter("@AddBedPrice", SqlDbType.Money);
                p30.Value = bill.AddBedPrice;
                SqlParameter p31 = new SqlParameter("@AddBedCount", SqlDbType.Int);
                p31.Value = bill.AddBedCount;
                SqlParameter p32 = new SqlParameter("@AddBedPriceSum", SqlDbType.Money);
                p32.Value = bill.AddBedPriceSum;

                com = new SqlCommand();
                com.Parameters.AddRange(new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, 
                    p11, p12, p13, p14, p15, p16, p17, p18, p20, p21, p22, p23, p24, p25, p28, p29,p30,p31,p32 });
                com.CommandType = CommandType.Text;
                com.CommandText = sql;
                listCom.Add(com);

                com = new SqlCommand();
                com.CommandType = CommandType.Text;
                com.CommandText = "update RoomNumber set RoomStateId=3 where RoomNum='" + bill.RoomNo + "'";
                listCom.Add(com);

                
            }



            bool flag = SQLHelper.ExeNonQueryTran(listCom);
            return flag;
        }
        #endregion

        #region 获取入住人的姓名
        public string GetRealName(string number)
        {
            string sql = "select top 1 RealName from BillToStay where RoomNo =@RoomNo order by ComeDate desc ";

            SqlParameter p1 = new SqlParameter("@RoomNo", SqlDbType.VarChar);
            p1.Value = number;

            string name = "";
            try
            {
                name = (string)SQLHelper.GetScalar(sql, CommandType.Text, new SqlParameter[] { p1 });
            }
            catch (Exception exe) { }

            return name;
        }
        #endregion

        #region BillToHotelByShow.aspx 页面
        public List<BillToStay> GetByRealName(string name)
        {
            string sql = "select * from [BillToStay] b ,RoomNumber n where b.RoomNo=n.RoomNum and n.RoomStateId=3 and  RealName='" + name + "'";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<BillToStay> list = new List<BillToStay>();

            while (read.Read())
            {
                BillToStay stay = new BillToStay();
                stay.Id = (int)read["Id"];
                stay.RealName = name;
                stay.CertificateType = read["CertificateType"].ToString();
                stay.CertificateNo = read["CertificateNo"].ToString();
                stay.Sex = read["Sex"].ToString();
                stay.CountryArea = read["CountryArea"].ToString();
                stay.ProviceArea = read["ProviceArea"].ToString();
                stay.Address = read["Address"].ToString();
                stay.CustomerType = read["CustomerType"].ToString();
                stay.CustomerSource = read["CustomerSource"].ToString();
                stay.CustomerMark = read["CustomerMark"].ToString();
                stay.Tel = read["Tel"].ToString();
                stay.ComeDate = (DateTime)read["ComeDate"];
                stay.GoDate = (DateTime)read["GoDate"];
                stay.RoomNo = read["RoomNo"].ToString();
                stay.RoomType = read["RoomType"].ToString();
                stay.PriceBase = (decimal)read["PriceBase"];
                stay.Discount = read["Discount"].ToString();
                stay.PriceByDiscount = (decimal)read["PriceByDiscount"];
                stay.RecordCount = (int)read["RecordCount"];
                stay.PayType = read["PayType"].ToString();
                stay.YinShouMoney = (decimal)read["YinShouMoney"];
                stay.Deposit = (decimal)read["Deposit"];
                stay.ShiShouMoney = (decimal)read["ShiShouMoney"];
                stay.PayMark = read["PayMark"].ToString();          
                stay.Operationer = read["Operationer"].ToString();
                stay.CardNo = read["CardNo"].ToString();
                stay.AddBedPrice = (decimal)read["AddBedPrice"];
                stay.AddBedCount = (int)read["AddBedCount"];
                stay.AddBedPriceSum = (decimal)read["AddBedPriceSum"];
                list.Add(stay);
            }
            read.Close();
            return list;
        }
        #endregion
    }
}
