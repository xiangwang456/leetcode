#include <iostream>
#include <vector>
using namespace std;

class Solution
{
public:
	bool solveSudoku(vector<vector<char> > &board) 
	{
		for (int i = 0; i < 9; i++)
		{
			for (int j = 0; j < 9; j++)
			{
				if (board[i][j] == '.')
				{
					for (int k = 0; k < 9; k++)
					{
						board[i][j] = '1' + k;
						if (IsValid(board, i, j) && solveSudoku(board))
							return true;
						board[i][j] = '.';
					}
					return false;
				}
			}
		}
		return true;
		
	}

private:
	bool IsValid(const vector<vector<char> > &board, int x, int y)
	{
		//检查i行是否重复
		for (int i = 0; i < 9;i++)
			if (i != y&&board[x][i] == board[x][y])
				return false;
		//检查j列是否重复
		for (int i = 0; i < 9;i++)
			if (i != x&&board[i][y] == board[x][y])
				return false;
		//检查该块是否重复
		int row = 3 * (x / 3);
		int col = 3 * (y / 3);
		for (int i = row; i < row+3 ;i++)
			for (int j = col; j < col + 3;j++)
				if (board[i][j] == board[x][y])
				{
					if (i == x&&j == y)
						continue;
					else
						return false;
				}
		return true;
	}
};