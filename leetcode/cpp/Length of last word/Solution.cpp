#include <string>
#include <iostream>

using namespace std;
class Solution {
public:
	int lengthOfLastWord(string s) {
		//Ê±¼ä¸´ÔÓ¶Èo(n) 
		int n = s.size() -1;
		while (n >=0 && s[n] == ' ')
			n--;
		int res = 0;
		for (; n >= 0 && s[n] != ' '; n--, res++);
		return res;
	}
};

int main()
{
	Solution solu;
	cout << solu.lengthOfLastWord("");
	int end;
	cin >> end;
}