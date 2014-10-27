#include <iostream>
using namespace std;

int GetFirst(int *nums, int length,int k, int start, int end)
{
	if (start > end)
		return -1;
	int midi = (end - start) / 2;
	if (nums[midi] == k)
	{
		if ((midi > 0 && nums[midi - 1] != k) || (midi == 0))
			return midi;
		else
			end -= 1;
	}
		else if (nums[midi] > k)
			end = midi - 1;
		else
			start = midi + 1;

	return GetFirst(nums, length,k, start, end);

}

int GetEnd(int *nums, int length,int k, int start, int end)
{
	if (start > end)
		return -1;

	int midi = (end - start) / 2;
	if (nums[midi] == k)
	{
		if ((midi < length-1&&nums[midi + 1] != k) || (midi == length-1))
			return midi;
		else
			midi += 1;
	}

	else if (k < nums[midi])
		end = midi - 1;
	else
		start = midi + 1;

	return GetEnd(nums,length, k, start, end);
}

int main()
{

}