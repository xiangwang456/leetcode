#include <iostream>
#include <string>
#include <stack>
#include <algorithm>

using namespace std;
class Solution {
public:
	int longestValidParentheses(string s) {
		stack<int> stk;
		int maxValue = 0;
		//从头开始遍历，如果遇到‘（’、栈为空、或者栈顶元素就把元素序号入栈，否则就出栈，统计长度
		for (int i = 0; i < s.size(); i++)
		{
			if (s[i] == '(' || stk.empty() || s[stk.top()] == ')')
				stk.push(i);
			else
			{									
				stk.pop();
				if (stk.empty())
					maxValue = max(maxValue, i + 1);
				else
					maxValue = max(maxValue, i - stk.top());
			}
		}
		return maxValue;
	}
};

int main()
{
	Solution solu;
	cout << solu.longestValidParentheses("()");

	int end;
	cin >> end;
}