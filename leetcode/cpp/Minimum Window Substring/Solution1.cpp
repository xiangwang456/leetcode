#include <unordered_map>
#include <string>
#include <vector>
using namespace std;

class Solution1
{
public:
	string minWindow(string S, string T)
	{
		string res = "";
		if (S.size() < T.size())
			return res;

		unordered_map<char, int> needfind;
		unordered_map<char, int> hasfind;
		for (auto it = T.begin(); it != T.end(); it++)
			needfind[*it]++;

		int begin = 0;
		int minBegin = 0;
		int minLength = S.size() + 1;
		int cnt = 0;//记录是否全部包含了T中的字符
		for (int end = 0; end < S.size(); end++)
		{
			if (needfind[S[end]] == 0)
				continue;

			hasfind[S[end]]++;
			if (hasfind[S[end]] <= needfind[S[end]])
				cnt++;
			if (cnt == T.size())
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
						//下面两句的顺序很重要，不能搞反！！！
						hasfind[S[begin]]--;
						begin++;
						continue;
					}
					else
						break;
				}

				int newlength = end - begin + 1;
				if (newlength < minLength)
				{
					minLength = newlength;
					minBegin = begin;
				}
			}
		}

		if (minLength <= S.size())
			res = S.substr(minBegin, minLength);
		return res;
	}
};