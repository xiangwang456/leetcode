#include <stdio.h>
#include <list>

using namespace std;

struct<

int main()
{
	list<int>::size_type n;//listÔªËØ¸öÊý
	while (scanf_s("%d", &n) != EOF)
	{
		int result;
		list<int> ilist(n);
		list<int>::size_type lastIndex; 
		scanf_s("%d", &lastIndex);

		list<int>::size_type t = n - lastIndex;
		for(int i=0;i<n;i++)
		{
			int num;
			scanf_s("%d", &num);
			if (t == i)
				result = num;
			ilist.push_back(num);
		}
		if (t < 0||lastIndex<=0)
			printf("NULL\n");
		else
			printf("%d\n", result);
	}
}