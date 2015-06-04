#include <iostream>
#include <string>
#include <vector>

using namespace std;
class Solution {
public:
	string longestCommonPrefix(vector<string>& strs) {
		if (strs.empty())
			return "";
		int len = strs[0].length();
		for (int i = 1; i < strs.size(); i++)
		{
			int j = 0;
			for (; j < len && j < strs[i].length() && strs[i - 1][j] == strs[i][j]; j++);
			len = j;
		}
		return strs[0].substr(0,len);
	}
};