#include <iostream>
#include <string>
using namespace std;

class Solution {
public:
	bool isMatch(char* s, char* p) {
		if (*p == '\0')
			return *s == '\0';
		if (*(p + 1) != '*'){
			//下一个字符不是‘*’
			if ((*p == '.' && *s != '\0') || *p == *s)
				return isMatch(s + 1, p + 1);
			else
				return false;
		}
		else {
			//下个字符是‘*’
			while ((*p == '.'&& *s != '\0') || *p == *s){
				if (isMatch(s, p + 2))
					return true;
				s++;
			}
			//* 匹配0个n个先前的元素 ，*存在就会吃掉前缀字母
			return isMatch(s, p + 2);
		}
	}
};

int main()
{
	Solution solu;
	cout << solu.isMatch("ba","d*ba") << endl;

	int end;
	cin >> end;
}