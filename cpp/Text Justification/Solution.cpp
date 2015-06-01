/*
 * Solution.cpp
 *
 *  Created on: 2015年5月28日
 *      Author: messi
 */
#include <iostream>
#include <vector>
#include <string>
using namespace std;


class Solution {
public:
    vector<string> fullJustify(vector<string>& words, int maxWidth)
	{
    	vector<string> res;
		int len = words.size();
		int i = 0;
		while(i < len)
		{
			int j = i;
			int rowLen = 0;
			while (j < len && (rowLen + words[j].size() <= maxWidth))
				rowLen += (words[j++].size() + 1);
			//处理只有一个单词的情况,j - i 代表单词个数
			if( j - i == 1)
			{
				string temp = words[i];
				addSpace(temp,maxWidth - temp.size());
				res.push_back(temp);

				i = j;
				continue;
			}

			int charLen = rowLen - (j - i);
			int spaceLen = maxWidth - charLen;
			int spaceNum = j - i - 1;
			int meanSpace = j < len ? (spaceLen / spaceNum) : 1;
			int extraSpace = j < len ? (spaceLen % spaceNum) : maxWidth - charLen - spaceNum;

			string temp = "";
			for( int k = i; k < j - 1 ; k++ )
			{
				temp += words[k];
				addSpace(temp,meanSpace);
				if (j < len && extraSpace > 0)
				{
					addSpace(temp,1);
					extraSpace--;
				}
			}
			temp += words[j - 1];
			if (j == len)
			{
				addSpace(temp,extraSpace);
			}
			res.push_back(temp);
			i = j;
		}
			return res;
	}

	void addSpace(string &str,int count)
	{
		for (int i = 0; i < count; i++)
			str.push_back('*');
	}
};
