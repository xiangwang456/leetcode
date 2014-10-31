#include <iostream>
using namespace std;

class Temp
{
public:
	Temp()
	{
		num++;
		sum += num;
	}
	static void Reset()
	{
		num = 0;
		sum = 0;
	}

	static int GetSum()
	{
		return sum;
	}
private:
	static int num;
	static int sum;
};


int Temp::num = 0;
int Temp::sum = 0;

int main()
{
	int n;
	while (cin >> n)
	{
		Temp *ts = new Temp[n];
		delete[] ts;
		cout << Temp::GetSum() << endl;
		Temp::Reset();
	}
}