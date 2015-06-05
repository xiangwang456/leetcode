#include <iostream>
#include <string>

using namespace std;

class Solution {
public:
	int compareVersion(string version1, string version2) 
	{
		int n1 = version1.size();
		int n2 = version2.size();
		for (int i = 0, j = 0; i < n1 || j < n2; i++, j++)
		{
			
			int sum1 = 0, sum2 = 0;
			//version1
			while (i < n1&&version1[i] != '.')
				sum1 = 10 * sum1 + version1[i++] - '0';
			//version2
			while (j < n2&&version2[j] != '.')
				sum2 = 10 * sum2 + version2[j++] - '0';

			if (sum1>sum2)
				return 1;
			else if (sum1 < sum2)
				return -1;
		}
		return 0;
	}
};

int main()
{
	Solution solu;
	cout << solu.compareVersion("0", "1");

	int end;
	cin >> end;
}