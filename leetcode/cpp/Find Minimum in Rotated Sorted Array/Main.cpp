#include "Solution.cpp"

int main()
{
	Solution solution;
	
	int a[] = { 4, 5, 6, 0, 1, 2 };
	//int a[] = { 3, 1, 2 };
	vector<int> num(a, a + 5);
	cout << solution.findMin(num) << endl;

	int end;
	cin >> end;
}