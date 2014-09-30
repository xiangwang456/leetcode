#include <stdio.h>

template <typename T>  void swap(T a[], int first, int second){
	T temp;
	temp = a[first];
	a[first] = a[second];
	a[second] = temp;
}

void swap(int &a, int &b)
{
	int temp = a;
	a = b;
	b = temp;
}

template<typename T> void qucik3way(T a[], int low, int high)
{
	if (high <= low)
		return;

	int lt = low;
	int gt = high;
	T v = a[low];   
	int i = low + 1; //±éÀúË÷Òý
	while (i <= gt)
	{
		if (a[i] < v)
			//sawp(a,lt++, i++);
			swap(a[i++], a[lt++]);
		else if (a[i]>v)
			//sawp(a,i,gt--);
			swap(a[gt--], a[i]);
		else 
			i++;
	}
	qucik3way(a, low, lt-1);
	qucik3way(a, gt+1, high);
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
	int a[10] = { 1, 1, 3, 1, 1, 2, 1, 3, 1, 2 };
	print_nums(a, 10);
	qucik3way(a, 0, 9);
	print_nums(a, 10);


	int n;
	scanf_s("%d", &n);
}