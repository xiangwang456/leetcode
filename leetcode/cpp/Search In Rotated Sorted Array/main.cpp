#include "Solution.cpp"

int main()
{
	Solution solution;
	//int a[] = { 1, 1, 3, 4, 5, 2, 3, 4, 5, 6, 6 };
	 int a[] = { 4, 5, 6, 7, 0, 1, 2, 3 };// 
 	//int a[] = { 3,1 };
 	//cout << solution.search(a, 2, 1) << endl;
	
	cout << solution.search(a, 8, 4) << endl;
	cout << solution.search(a, 8, 5) << endl;
	cout << solution.search(a, 8, 6) << endl;
	cout << solution.search(a, 8, 7) << endl;
	cout << solution.search(a, 8, 0) << endl;
	cout << solution.search(a, 8, 1) << endl;
	cout << solution.search(a, 8, 2) << endl;
	cout << solution.search(a, 8, 3) << endl;
	cout << solution.search(a, 8, 11) << endl;
	int end;
	cin >> end;
}