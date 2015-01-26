#include <stdio.h>




void swap(int &a, int &b)
{
	
	a = a + b;
	b = a - b;
	//a = a - b;
	
// 	int temp = a;
// 	a = b;
// 	b = temp;
	
}


int partition(int *, int, int);

void sort(int *a, int low, int high)
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
		while (a[++i] < v) if(i==high) break;
		while (a[--j] > v) ;
		if (i >= j)
			break;
		swap(a[i], a[j]);
	}
<<<<<<< HEAD

=======
	//j += 1;
>>>>>>> 2daa1b4d9b79ed52ed147933f9301fde50c6a3a6
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
// 	int a[] = { 3, 4,5,6, 1,2, 2, 5, 6,2, 7, 9, 17, 54, 24};
// 	int n = sizeof(a) / sizeof(int);
// 	print_nums(a, n);
// 	sort(a,0,n-1);
// 	print_nums(a, n);

	int i = 1, j = 1;
	swap(i, i);
	printf("%d  \n", i);
			
	int h;
	scanf_s("%d", &h);
	return 0;
}