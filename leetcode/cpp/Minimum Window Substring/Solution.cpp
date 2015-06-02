#include <unordered_map>
#include <vector>
#include <string>

using namespace std;

class Solution
{
public:

	//思路与Substring with concatenation of all word 类似，维护一个窗口
	//用两个map记录需要查找的和已经查找到的字母，并记录查找到的元素在需要查找的数组中的个数，用于判断是否已经全部包含
	//找到全部包含字母后窗口的begin向前移动压缩窗口
	//end从0到s中的最后一个字母，依次找到每一个窗口，记录最小窗口
	//注意若没有匹配到的情况
	//时间复杂度O（n），空间复杂度O(m) 
	string minWindow(string S, string T) 
	{
		string res = "";
		if (S.size() < T.size()||S.size()==0||T.size()==0)
			return res;
		unordered_map<char, int> needfind;
		unordered_map<char, int> hasfind;
		for (auto it = T.begin(); it != T.end(); it++)
			needfind[*it]++;

		int minbegin = 0;
		int minWindowsLength = S.size()+1;

		int begin = 0;
		int end ;
		int count = 0;
		for (end = 0; end < S.size(); end++)
		{
			if (needfind[S[end]]==0)
				continue;
			hasfind[S[end]]++;
			if (hasfind[S[end]] <= needfind[S[end]])
				count++;
			if (count == T.size())
			{
				while (begin < end)
				{
					if (needfind[S[begin]] == 0)
					{
						begin++;
						continue;
					}
					if (hasfind[S[begin]]>needfind[S[begin]])
					{
						hasfind[S[begin]]--;
						begin++;
						continue;
					}
					else
						break;
				}

				int newlength = end - begin + 1;
				if (newlength < minWindowsLength)
				{
					minbegin = begin;
					minWindowsLength = newlength;
				}
			}
		}
		
		if (minWindowsLength>S.size())
			return "";
		return S.substr(minbegin, minWindowsLength);
	}
};