#include <iostream>
#include <string>

using namespace std;

int main()
{
	while (1)
	{
		string s;
		cin >> s;
		for (int i = 0; i < s.length(); i++)
			cout << s[i] << " ";
		cout << endl;
	}
	
}