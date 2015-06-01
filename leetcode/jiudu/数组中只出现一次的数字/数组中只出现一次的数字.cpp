#include <iostream>
#include <stdio.h>

using namespace std;

bool IsBit1(int num, unsigned int index);
unsigned int First1(int num);
void FindNumApearOnce(int *nums, int n, int &n1, int &n2)
{
	if (nums == NULL || n < 2)
		return;
	
	int resultEnclusiveOR = 0;
	for (int i = 0; i < n; i++)
		resultEnclusiveOR=resultEnclusiveOR^nums[i];

	unsigned int  index = First1(resultEnclusiveOR);
	n1 = n2 = 0;
	for (int i = 0; i < n; i++)
	{
		if (IsBit1(nums[i], index))
			n1 = n1^nums[i];
		else
			n2 = n2^nums[i];

	}

}

unsigned int First1(int num)
{
	unsigned int index = 0;
	while (((num & 1) == 0) && (index < 8 * sizeof(int)))
	{
		num = num >> 1;
		index++;
	}
	return index;
	

}

bool IsBit1(int num, unsigned int index)
{
	num = num >> index;
	return (num & 1);
}


int main()
{
	int n;
	while (cin>>n)
{
		int *nums = new int[n];
		for (int i = 0; i < n; i++)
			scanf_s("%d", &nums[i]);
		int n1, n2;

		FindNumApearOnce(nums, n, n1, n2);
		if (n1>n2)
		{
			int temp = n1;
			n1 = n2;
			n2 = temp;
		}
		printf("%d %d\n", n1, n2);


		cout << (n & -n) << endl;
		
		delete nums;
	}
}