#include <vector>
#include <string>
#include <iostream>

using namespace std;

class Solution {
public:
	//使用递归、回溯法实现
	vector<string> restoreIpAddresses(string s)
	{
		vector<string> res;
		string ip;
		restore(res, ip, s);
		return res;
	}
	//递归时记得引用类型
	void restore(vector<string> &res, string &ip, const string &s, int k = 1, int begin = 0)
	{
		//当取到ip段数为4的情况
		if (k == 4)
		{
			string t = s.substr(begin);
			if (isLegal(t))
				res.push_back(ip + "." + t);
			return;
		}
		//取ip中的每一段的时候从位数从0开始试
		//每段不超过3位数
		for (int len = 1; len < 4 && len + begin<s.size(); len++)
		{
			string t = s.substr(begin, len);
			if (!isLegal(t))
				return;
			//如果不是第一段则加‘.'
			if (k != 1)
				ip.push_back('.');
			ip.append(t);
			restore(res, ip, s, k + 1, begin + len);
			//去除当前段，选择len+1 的段重新遍历
			while (!ip.empty() && ip.back() != '.')
				ip.pop_back();
			if (!ip.empty())
				ip.pop_back();
			
		}
	}
	bool isLegal(string &s)
	{
		if (s.empty() || s.length() > 3 || (s.length() != 1 && s[0] == '0')) return false;
		//stoi（）函数将string转为int，只能转int内的值
		int t = stoi(s);
		return t < 256;
	}
};

int main()
{
	Solution solu;
	for (auto i : solu.restoreIpAddresses("25525511135"))
		cout << i << endl;

	int end;
	cin >> end;
}