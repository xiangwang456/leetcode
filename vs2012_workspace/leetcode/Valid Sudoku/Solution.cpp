#include <iostream>
#include <vector>
using namespace std;

class Solution
{
public:
	//分别按照行、列、块判断是否重复出现元素
	bool IsValidSudoku(vector< vector<char> > &board)
	{
		//时间复杂度O(n^2)
		//空间复杂度O（1）

		bool used[9];
		for (int i = 0; i < 9; i++)
		{
			fill(used, used + 9, false);
			//检查行
			for (int j = 0; j < 9; j++)
			{
				if (!check(board[i][j], used))
					return false;
			}
			
			//检查列
			fill(used, used + 9, false);
			for (int j = 0; j < 9; j++)
			{
				if (!check(board[j][i], used))
					return false;
			}
		}

		//检查块

		for (int r = 0; r < 3;r++)
			for (int c = 0; c < 3; c++)
			{
				fill(used, used + 9, false);
				for (int i = r*3; i < r*3+3;i++)
					for (int j = c * 3; j < c * 3 + 3; j++)
						if (!check(board[i][j], used))
							return false;
			}

			return true;
	}
	
private:

	//判断在这个数是否已经出现，若出现则返回false，没有出现则返回true且把这个位置上设置已经出现的标记
	//board中存放的数是从1开始的，used数组则是从0开始
	bool check(char ch, bool used[9])
	{
		if (ch == '.')
			return true;
		else if (used[ch - '1'])
			return false;
		else
			return used[ch - '1'] = true;
	}
};