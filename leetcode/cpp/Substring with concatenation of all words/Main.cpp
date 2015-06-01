#include "Solution.cpp"

int main()
{
	Solution solution;
	vector<string> l;
	l.push_back("mississippis");
	//l.push_back("bar");
	string s = "mississippi";

	vector<int> res=solution.findSubstring(s, l);
	for (auto ele : res)
		cout << ele << " ";
	cout << endl;

	int n;
	cin >> n;
}