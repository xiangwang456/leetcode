#include <vector>
#include <iostream>

using namespace std;

#define positive 0
#define negative 1

class Solution
{
public:
	int maxProduct(int A[], int n)
	{
		if (n <= 0)
			return 0;
		
		int first = 1, last = 1;
		int countflag=1; //与first相同符号的个数
		bool flag;
		while (A[first] == 0)
			first++;
		int res = A[first], currRes = A[first];
		if (A[0] > 0)
			flag = positive;
		else
			flag = negative;
		int currFirst = first+1, currLast = last;
		
		for (; currLast < n; currLast++)
		{
			if (A[currLast] == 0)
			{
				currFirst = currLast + 1;
				currRes = A[currFirst];
			}
			if ((A[currLast]>0 && flag == positive) || (A[currLast] < 0 && flag == negative))
			{
				countflag++;
				if (countflag%2!=0) //与result相同符号的个数是奇数
					continue;
				last++;
				
			}


			
		}
	}
};