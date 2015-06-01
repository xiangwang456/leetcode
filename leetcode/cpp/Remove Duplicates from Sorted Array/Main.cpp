#include "Solution.cpp"
#include <iostream>
using namespace std;

int main()
{
	int a[2] = { 1, 2};
	Solution solution;
	int num = solution.removeDuplicates(a, 2);
	cout << num << endl;
	
	int end;
	for(int i=0;i<num;i++)
		cout << a[i] << "\t";
	cout << endl;
	cin >> end;
}