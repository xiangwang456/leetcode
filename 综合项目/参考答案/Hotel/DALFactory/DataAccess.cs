using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Reflection;

namespace Hotel.DALFactory
{
    public sealed class DataAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["WebDAL"];

        private DataAccess() { }

        public static Hotel.IDAL.IHotelInfo CreateHotelInfo()
        {
            string className = path + ".HotelInfoDAL";
            return new Hotel.SQLServerDAL.HotelInfoDAL();
            //return (Hotel.IDAL.IHotelInfo)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IRoomType CreateRoomType()
        {
            string className = path + ".RoomTypeDAL";
            return new Hotel.SQLServerDAL.RoomTypeDAL();
            //return (Hotel.IDAL.IRoomType)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IWineBar CreateWineBar()
        {
            string className = path + ".WineBarDAL";
            return new Hotel.SQLServerDAL.WineBarDAL();
            //return (Hotel.IDAL.IWineBar)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IHealthFun CreateHealthFun()
        {
            string className = path + ".HealthFunDAL";
            return new Hotel.SQLServerDAL.HealthFunDAL();
            //return (Hotel.IDAL.IHealthFun)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IConference CreateConference()
        {
            string className = path + ".ConferenceDAL";
            return new Hotel.SQLServerDAL.ConferenceDAL();
            //return (Hotel.IDAL.IConference)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IPriceList CreatePriceList()
        {
            string className = path + ".PriceListDAL";
            return new Hotel.SQLServerDAL.PriceListDAL();
            //return (Hotel.IDAL.IPriceList)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IFavour CreateFavour()
        {
            string className = path + ".FavourDAL";
            return new Hotel.SQLServerDAL.FavourDAL();
            //return (Hotel.IDAL.IFavour)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IIntent CreateIntent()
        {
            string className = path + ".IntentDAL";
            return new Hotel.SQLServerDAL.IntentDAL();
            //return (Hotel.IDAL.IIntent)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.ICustomer CreateCustomer()
        {
            string className = path + ".CustomerDAL";
            return new Hotel.SQLServerDAL.CustomerDAL();
            //return (Hotel.IDAL.ICustomer)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.INews CreateNews()
        {
            string className = path + ".NewsDAL";
            return new Hotel.SQLServerDAL.NewsDAL();
            //return (Hotel.IDAL.INews)Assembly.Load(path).CreateInstance(className);
        }


        public static Hotel.IDAL.IStyle CreateStyle()
        {
            string className = path + ".StyleDAL";
            return new Hotel.SQLServerDAL.StyleDAL();
            //return (Hotel.IDAL.IStyle)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IUserInfo CreateUserInfo()
        {
            string className = path + ".UserInfoDAL";
            return new Hotel.SQLServerDAL.UserInfoDAL();
            //return (Hotel.IDAL.IUserInfo)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.ILeaveWord CreateLeaveWord()
        {
            string className = path + ".LeaveWordDAL";
            return new Hotel.SQLServerDAL.LeaveWordDAL();
            //return (Hotel.IDAL.ILeaveWord)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IRoomBook CreateRoomBook()
        {
            string className = path + ".RoomBookDAL";
            return new Hotel.SQLServerDAL.RoomBookDAL();
            //return (Hotel.IDAL.IRoomBook)Assembly.Load(path).CreateInstance(className);
        }

       

        public static Hotel.IDAL.ICard CreateCard()
        {
            string className = path + ".CardDAL";
            return new Hotel.SQLServerDAL.CardDAL();
            //return (Hotel.IDAL.ICard)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IRoomNumber CreateRoomNumber()
        {
            string className = path + ".RoomNumberDAL";
            return new Hotel.SQLServerDAL.RoomNumberDAL();
            //return (Hotel.IDAL.IRoomNumber)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IRoomStation CreateRoomStation()
        {
            string className = path + ".RoomStationDAL";
            return new Hotel.SQLServerDAL.RoomStationDAL();
            //return (Hotel.IDAL.IRoomStation)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IRoomState CreateRoomState()
        {
            string className = path + ".RoomStateDAL";
            return new Hotel.SQLServerDAL.RoomStateDAL();
            //return (Hotel.IDAL.IRoomState)Assembly.Load(path).CreateInstance(className);
        }


        public static Hotel.IDAL.IBillToStay CreateBillToStay()
        {
            string className = path + ".BillToStayDAL";
            return new Hotel.SQLServerDAL.BillToStayDAL();
            //return (Hotel.IDAL.IBillToStay)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IBillToRepair CreateBillToRepair()
        {
            string className = path + ".BillToRepairDAL";
            return new Hotel.SQLServerDAL.BillToRepairDAL();
            //return (Hotel.IDAL.IBillToRepair)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IBillToOwn CreateBillToOwn()
        {
            string className = path + ".BillToOwnDAL";
            return new Hotel.SQLServerDAL.BillToOwnDAL();
            //return (Hotel.IDAL.IBillToOwn)Assembly.Load(path).CreateInstance(className);
        }

    

        public static Hotel.IDAL.ILoginLog CreateLoginLog()
        {
            string className = path + ".LoginLogDAL";
            return new Hotel.SQLServerDAL.LoginLogDAL();
            //return (Hotel.IDAL.ILoginLog)Assembly.Load(path).CreateInstance(className);
        }

     

        public static Hotel.IDAL.IGoodsType CreateGoodsType()
        {
            string className = path + ".GoodsTypeDAL";
            return new Hotel.SQLServerDAL.GoodsTypeDAL();
            //return (Hotel.IDAL.IGoodsType)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IGoodsName CreateGoodsName()
        {
            string className = path + ".GoodsNameDAL";
            return new Hotel.SQLServerDAL.GoodsNameDAL();
            //return (Hotel.IDAL.IGoodsName)Assembly.Load(path).CreateInstance(className);
        }

        public static Hotel.IDAL.IGoodsStore CreateGoodsStore()
        {
            string className = path + ".GoodsStoreDAL";
            return new Hotel.SQLServerDAL.GoodsStoreDAL();
            //return (Hotel.IDAL.IGoodsStore)Assembly.Load(path).CreateInstance(className);
        }

    }
}
