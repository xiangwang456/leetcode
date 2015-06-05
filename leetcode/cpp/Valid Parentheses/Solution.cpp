#include <string>
#include <iostream>
#include <stack>

using namespace std;
class Solution {
public:
	bool isValid(string s) {
		stack<char> stk;
		for (int i = 0; i < s.size(); i++)
		{
			if (s[i] == '(' || s[i] == '[' || s[i] == '{')
				stk.push(s[i]);
			else
			{
				if (stk.empty())
					return false;
				if (s[i] == ')' && stk.top() != '(')
					return false;
				if (s[i] == ']' && stk.top() != '[')
					return false;
				if (s[i] == '}' && stk.top() != '}')
					return false;
				stk.pop();
			}
		}
		return stk.empty();
	}
};

int main()
{
	Solution solu;
	cout << solu.isValid("[]{}");

	int end;
	cin >> end;
}