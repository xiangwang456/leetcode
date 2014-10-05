using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface ICustomer
    {
        Customer LoginByCustomer(Customer customer);
        Customer GetCustomerById(int id);
        bool UpdateCustomer(Customer customer);
        bool UpdateCustomerByPwd(Customer customer);
        bool UpdateCustomerByLineCount(int id);
        bool UpdateCustomerLastOnLineTime(int id);
        bool IsLoginIdExit(string loginId);
        bool IsEmailExit(string email);
        bool IsIdentityExit(string IdentityId);
        List<Customer> GetCustomerAll();
        bool DeleteById(int id);
        bool InsertCustomer(Customer cus);
        Customer GetCustomerByCardNo(string cardNo, string pwd);
    }
}
