#include <stdio.h>




void swap(int &a, int &b)
{
	a = a + b;
	b = a - b;
	a = a - b;
}


int partition(int *, int, int);

void sort(int &a[], int low, int high)
{

	if (low >= high)
		return;
	int j = partition(a, low, high);
	sort(a, low, j - 1);
	sort(a, j + 1, high);
}

int partition(int *a, int low, int high)
{
	int v = a[low];
	int i = low;
	int j = high+1;
 
	while (1)
	{
		while (a[++i] < v) ;
		while (a[--j] > v) ;
		if (i >= j)
			break;
		swap(a[i], a[j]);
	}
	j += 1;
	swap(a[j], a[low]);
	return j;
}

template<typename T> void print_nums(T *a, int n)
{
	for (int i = 0; i < n; i++)
	{
		printf("%d ", a[i]);

	}
	printf("\n");
}

int main()
{
	int a[] = { 1, 5, 6, 8, 9, 4, 5, 1, 0, 10, 26, 5 };
	int n = sizeof(a) / sizeof(int);
	print_nums(a, n);
	sort(a,0,n-1);
	print_nums(a, n);

	/*
	int i = 1, j = 2;
	swap(i, j);
	printf("%d %d \n", i, j);
	*/
	
	int h;
	scanf_s("%d", &h);
	return 0;
}