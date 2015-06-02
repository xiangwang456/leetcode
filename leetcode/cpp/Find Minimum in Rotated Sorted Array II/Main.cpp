#include "Solution.cpp"

int main()
{
	Solution solution;

	//int a[] = { 3, 3, 1, 1, 2, 2 };
	//int a[] = { 3, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 };
	int a[] = { 3, 1, 3 };
	vector<int> num(a, a + 3);
	cout << solution.findMin(num) << endl;

	int end;
	cin >> end;
}