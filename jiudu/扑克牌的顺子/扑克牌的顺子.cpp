#include <iostream>
#include <stdlib.h>
using namespace std;

int compare(const void* n1, const void* n2)
{
	return *(int*)n1 > *(int*)n2;
}

bool IsSequence(int *nums, int n)
{

 	if (nums==NULL||n < 1)
 		return false;
	qsort(nums, n, sizeof(int), compare);
	int numOfZero = 0;
	if (numOfZero>4)
		return false;
	int begin = 0;
	for (begin = 0; begin < n&&nums[begin] == 0; begin++)
		numOfZero++;
	int gap = 0;
	for (int i = begin+1; i < n; i++)
	{
		if (nums[i] == nums[i - 1])
			return false;
		gap += nums[i] - nums[i - 1] - 1;
		
	}
	if (gap <= numOfZero)
		return true;
	else
		return false;
}

int main()
{
	int n;
	while (cin >> n&&n>0)
	{
		int *nums = new int[n];
		for (int i = 0; i < n; i++)
			cin >> nums[i];
		if (IsSequence(nums, n))
			cout << "So Lucky!" << endl;
		else
			cout << "Oh My God!" << endl;
		delete[] nums;
	}
}