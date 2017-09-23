#include <iostream>
#include <algorithm>
#include <vector>
#include <string>

using namespace std;

class Solution
{
public:
	string longestPalindrome(string s) 
	{
		const int n = s.size();
		//vector< vector<bool>> f(n,vector<bool>(n,false));
		/*bool **f = new bool*[10];
		for (int i = 0; i < n; i++)
		{
			f[i] = new bool[n];
		}*/
		bool f[1000][1000];
		fill_n(&f[0][0], n*n, false);

		for (int i = 0; i < n; i++)
			cout << f[i][i];
		size_t start = 0 ,max_len = 1;
		for (size_t i = 0; i < n; i++)
		{
			f[i][i] = true;
			for (int j = 0; j < i; j++)
			{
				f[j][i] = s[i] == s[j] && (i == j + 1 || (f[j + 1][i - 1]));
				if(f[j][i] && (i - j + 1 > max_len))
				{
					max_len = i - j + 1;
					start = j;
				}
			}
		}
		/*for (int i = 0; i < n; i++)
		{
			delete[]f[i];
		}
		delete[] f;*/
		return s.substr(start, max_len);
	}
};

int main()
{
	Solution solu;
	string palindrome = solu.longestPalindrome("aba");
	cout << palindrome << endl;

	int end;
	cin >> end;
	
}