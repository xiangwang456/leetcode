using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class CustomerBLL
    {

        private static readonly ICustomer icustomer = Hotel.DALFactory.DataAccess.CreateCustomer();

        //登录
        public Customer LoginByCustomer(Customer customer)
        {
            return icustomer.LoginByCustomer(customer);
        }

        //根据主键查询
        public Customer GetCustomerById(int id)
        {
            return icustomer.GetCustomerById(id);
        }

        //修改资料
        public bool UpdateCustomer(Customer customer)
        {
            return icustomer.UpdateCustomer(customer);
        }

        //修改密码
        public bool UpdateCustomerByPwd(Customer customer)
        {
            return icustomer.UpdateCustomerByPwd(customer);
        }

        //增加上线次数
        public bool UpdateCustomerByLineCount(int id)
        {
            return icustomer.UpdateCustomerByLineCount(id);
        }

        //修改最后一次上线时间
        public bool UpdateCustomerLastOnLineTime(int id)
        {
            return icustomer.UpdateCustomerLastOnLineTime(id);
        }

        //用户名是否存在
        public bool IsLoginIdExit(string loginId)
        {
            return icustomer.IsLoginIdExit(loginId);
        }

        //身份证是否重复
        public bool IsIdentityExit(string IdentityId)
        {
            return icustomer.IsIdentityExit(IdentityId);
        }

        //Emial是否存在
        public bool IsEmailExit(string email)
        {
            return icustomer.IsEmailExit(email);
        }

        
        //查询全部
        public List<Customer> GetCustomerAll()
        {
            return icustomer.GetCustomerAll();
        }

        
        //删除
        public bool DeleteById(int id)
        {
            return icustomer.DeleteById(id);
        }

        //插入
        public bool InsertCustomer(Customer cus)
        {
            return icustomer.InsertCustomer(cus);
        }

        //账户查询
        public Customer GetCustomerByCardNo(string cardNo, string pwd)
        {
            return icustomer.GetCustomerByCardNo(cardNo, pwd);
        }
    }
}
