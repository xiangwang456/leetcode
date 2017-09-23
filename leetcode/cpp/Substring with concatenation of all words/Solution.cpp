#include <unordered_map>
#include <vector>
#include <iostream>
#include <string>
using namespace std;

class Solution 
{
public:
	/*
		使用滑动窗口记录是否与L中的words相同，若碰到一个不同的则直接跳到这个单词的末尾，
	若碰到一个原来已经碰到过的单词，则把窗口的起始位置放到第一次出现该单词的下一个位置，
	记录窗口中的单词个数，若和L中的个数相同则把该位置放入result中。
	为了保证串联可以从任意位置出现，应该循环第一个单词的所有位置。
	*/
	
// 	时间复杂度O(n*m)，空间复杂度O（m）
	vector<int> findSubstring(string S, vector<string> &L)
	{
		vector<int> res;
		int wordlength = L[0].length();
		if (L.size()*wordlength > S.size())
			return res;
		unordered_map<string, int> wordcount;
		for (auto iter_words = L.begin(); iter_words != L.end(); iter_words++)
			wordcount[*iter_words]++;
		
		for (int i = 0; i < wordlength; i++)  //循环第一个单词保证从任意子字符串都可能
		{
			unordered_map<string, int> wordcount2;
			int cnt = 0, winStart = i;
			for (int wordEnd = i; wordEnd <= S.size() - wordlength; wordEnd += wordlength)  
			{
				string word = S.substr(wordEnd, wordlength);
				if (wordcount.find(word)!=wordcount.end())  //出现L中的单词
				{
					wordcount2[word]++;
					if (wordcount2[word] <= wordcount[word])  
						cnt++;
					else                                 //重复出现已经出现的单词，窗口起始位置移动到第一次出现的后面的那个单词位置
					{
						for (int j = winStart;; j += wordlength)
						{
							string del_word = S.substr(j, wordlength);
							wordcount2[del_word]--;
							if (del_word == word)
							{
								winStart = j + wordlength;
								break;
							}
							cnt--;
						}
					}

					if (cnt == L.size())              
						res.push_back(winStart);
						
				}
				else
				{
					winStart = wordEnd + wordlength;
					wordcount2.clear();
					cnt = 0;
				}
			}
		}
		return res;
	}
};