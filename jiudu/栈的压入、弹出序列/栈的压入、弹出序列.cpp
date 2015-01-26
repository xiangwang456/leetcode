#include <stdio.h>
#include <stack>

void IsPopOrder(const int *pPush, const int *pPop, int length)
{
	bool isPossible=false;
	if (pPush != NULL&&pPop != NULL&&length > 0)
	{
		const int *pNextPush = pPush;
		const int *pNextPop = pPop;
		std::stack<int> stackData;
		while (pNextPop - pPop < length)
		{
			while (stackData.empty() || stackData.top() != *pNextPop)
			{
				if (pNextPush-pPush == length)
					break;
				stackData.push(*pNextPush);
				pNextPush++;
			}

			if (stackData.top() != *pNextPop)
				break;

			pNextPop++;
			stackData.pop();		
			
		}
		if (pNextPop - pPop == length&&stackData.empty())
			isPossible = true;
	}
	if (isPossible)
		printf("Yes\n");
	else
		printf("No\n");
}

int main()
{
	int n;

	while (scanf_s("%d", &n)!=EOF)
	{
 		int *pPush = new int[n];
 		int *pPop = new int[n];

		for (int i = 0; i < n; i++)
			scanf_s("%d", pPush + i);
		for (int i = 0; i < n; i++)
			scanf_s("%d", pPop + i);

		IsPopOrder(pPush, pPop, n);

 		delete[] pPush;
 		delete[] pPop;
	}

	return 0;
}