#include "Solution.cpp"
#include <iostream>
using namespace std;

int main()
{
	int a[5] = { 1,1,1,2, 2 };
	Solution solution;
	int num = solution.removeDuplicates(a, 5);
	cout << num << endl;

	int end;
	for (int i = 0; i < num; i++)
		cout << a[i] << "\t";
	cout << endl;
	cin >> end;
}