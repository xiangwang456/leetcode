#include <iostream> 
#include <stdlib.h> 
#include <time.h> 

using namespace std;

int main()
{
	srand((unsigned)time(NULL));
	for (int i = 0; i < 10; i++)
		cout << rand() << '\t';
	cout << endl;

	int end;
	cin >> end;
	return 0;
}