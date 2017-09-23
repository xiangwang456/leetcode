#include <iostream>
#include <string>
#include <functional>
#include <algorithm>
#include <sstream>
using namespace std;

class Solution {
public:
	string countAndSay(int n) {
		//时间复杂度O(n^2),空间复杂度O(1)
		string s = "1";
		while (--n)
			s = getNext(s);
		return s;
	}

	string getNext(const string &s){
		stringstream ss;
		for (auto i = s.begin(); i != s.end();){
			auto j = find_if(i, s.end(), bind1st(not_equal_to<char>(), *i));
			ss << distance(i, j) << *i;
			i = j;
		}
		return ss.str();
	}
};

int main()
{
	Solution solu;
	for (int i = 0; i < 10; i++){
		cout << solu.countAndSay(i) << "\t";
	}

	int end;
	cin >> end;
}