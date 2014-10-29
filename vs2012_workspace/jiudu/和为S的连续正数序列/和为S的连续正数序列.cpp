#include <stdio.h>

void PrintNums(int start, int end)
{
	for (int i = start; i < end;i++)
		printf("%d ", i);
	printf("%d\n",end);
}

void PrintSequence(int k)
{
	if (k < 3)
	{
		printf("Pity!\n");
		printf("#\n");
		return;
	}
	
	bool flag = false;
	int small = 1;
	int big = 2;
	int currSum = 3;
	int mid = (k + 1) / 2;
	while (small < mid)
	{
		if (currSum == k)
		{
			flag = true;	

			PrintNums(small, big);

		}

		while((currSum > k)&&(small<mid))
		{
			currSum -= small;
			small++;
			if (currSum == k)
			{
				flag = true;
			
				PrintNums(small, big);
			}
		}

		big++;
		currSum += big;
	}

	if (!flag)
		printf("Pity!\n");
	printf("#\n");
}

int main()
{
	int n;
	while (scanf_s("%d", &n)!=EOF&&n>0)
	{
		PrintSequence(n);
	}
	return 0;
}