using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class BillToStay
    {
        private int _id;
        private string _realName;//用户姓名
        private string _certificateType;//证件类型
        private string _certificateNo;//证件号码
        private string _sex;//性别
        private string _countryArea;//来自区域
        private string _proviceArea;//省市地区
        private string _address;///详细地址
        private string _customerType;//客人类型。如（散客，团队）
        private string _customerSource;//客人来源。如（自入，业务员介绍）
        private string _customerMark;//备注信息
        private string _tel;//电话
        private DateTime _comeDate;//入住日期
        private DateTime _goDate;//退房日期
        private string _roomNo;//房间号
        private string _roomType;//房间类型
        private decimal _priceBase;//原始价格
        private string _discount;///折扣率           ///////////////////////////
        private decimal _priceByDiscount;//折扣后的价格      
        private int _recordCount;//一次添加几条记录
        private string _payType;//付款方式
        private decimal _yinShouMoney;//应收金额
        private decimal _deposit;//押金
        private decimal _shiShouMoney;//实收金额
        private string _payMark;//付款备注
        private string _operationer;//操作者
        private string _cardNo;//卡号
        private decimal _addBedPrice;//加床价格
        private int _addBedCount;//加床数量
        private decimal _addBedPriceSum;//加床总价

        public BillToStay() { }

        public BillToStay(string realName, string certificateType, string certificateNo, string sex,
                          string countryArea, string proviceArea, string address, string customerType,
                          string customerSource, string customerMark, string tel, DateTime comeDate,
                          DateTime goDate, string roomNo, string roomType, decimal priceBase,
                          string discount, decimal priceByDiscount,  int recordCount,
                          string payType, decimal yinShouMoney, decimal deposit, decimal shiShouMoney,
                          string payMark,string operationer,
                          string cardNo,decimal addBedPrice,int addBedCount,decimal addBedPriceSum) 
        {
            _realName = realName;
            _certificateType = certificateType;
            _certificateNo = certificateNo;
            _sex = sex;
            _countryArea = countryArea;
            _proviceArea = proviceArea;
            _address = address;
            _customerType = customerType;
            _customerSource = customerSource;
            _customerMark = customerMark;
            _tel = tel;
            _comeDate = comeDate;
            _goDate = goDate;
            _roomNo = roomNo;
            _roomType = roomType;
            _priceBase = priceBase;
            _discount = discount;
            _priceByDiscount = priceByDiscount;          
            _recordCount = recordCount;
            _payType = payType;
            _yinShouMoney = yinShouMoney;
            _deposit = deposit;
            _shiShouMoney = shiShouMoney;
            _operationer = operationer;
            _cardNo = cardNo;
            _addBedPrice = addBedPrice;
            _addBedCount = addBedCount;
            _addBedPriceSum = addBedPriceSum;
            _payMark = payMark;
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }      

        public string RealName
        {
            get { return _realName; }
            set { _realName = value; }
        }      

        public string CertificateType
        {
            get { return _certificateType; }
            set { _certificateType = value; }
        }
    
        public string CertificateNo
        {
            get { return _certificateNo; }
            set { _certificateNo = value; }
        }    

        public string Sex
        {
            get { return _sex; }
            set { _sex = value; }
        }    

        public string CountryArea
        {
            get { return _countryArea; }
            set { _countryArea = value; }
        }    

        public string ProviceArea
        {
            get { return _proviceArea; }
            set { _proviceArea = value; }
        }      

        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }
       
        public string CustomerType
        {
            get { return _customerType; }
            set { _customerType = value; }
        }      

        public string CustomerSource
        {
            get { return _customerSource; }
            set { _customerSource = value; }
        }       

        public string CustomerMark
        {
            get { return _customerMark; }
            set { _customerMark = value; }
        }
      
        public string Tel
        {
            get { return _tel; }
            set { _tel = value; }
        }      

        public DateTime ComeDate
        {
            get { return _comeDate; }
            set { _comeDate = value; }
        }
      
        public DateTime GoDate
        {
            get { return _goDate; }
            set { _goDate = value; }
        }      

        public string RoomNo
        {
            get { return _roomNo; }
            set { _roomNo = value; }
        }
      
        public string RoomType
        {
            get { return _roomType; }
            set { _roomType = value; }
        }      

        public decimal PriceBase
        {
            get { return _priceBase; }
            set { _priceBase = value; }
        }       

        public string Discount
        {
            get { return _discount; }
            set { _discount = value; }
        }    

        public decimal PriceByDiscount
        {
            get { return _priceByDiscount; }
            set { _priceByDiscount = value; }
        }  
        
        public int RecordCount
        {
            get { return _recordCount; }
            set { _recordCount = value; }
        }     

        public string PayType
        {
            get { return _payType; }
            set { _payType = value; }
        }      

        public decimal YinShouMoney
        {
            get { return _yinShouMoney; }
            set { _yinShouMoney = value; }
        }       

        public decimal Deposit
        {
            get { return _deposit; }
            set { _deposit = value; }
        }
      
        public decimal ShiShouMoney
        {
            get { return _shiShouMoney; }
            set { _shiShouMoney = value; }
        }     

        public string PayMark
        {
            get { return _payMark; }
            set { _payMark = value; }
        }      
    

        public string Operationer
        {
            get { return _operationer; }
            set { _operationer = value; }
        }       

        public string CardNo
        {
            get { return _cardNo; }
            set { _cardNo = value; }
        }

        public decimal AddBedPrice
        {
            get { return _addBedPrice; }
            set { _addBedPrice = value; }
        }

        public int AddBedCount
        {
            get { return _addBedCount; }
            set { _addBedCount = value; }
        }

        public decimal AddBedPriceSum
        {
            get { return _addBedPriceSum; }
            set { _addBedPriceSum = value; }
        }
    }
}
