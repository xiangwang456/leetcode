#include <stdio.h>
#include <stack>
using namespace std;

struct StackWithMin
{
	stack<int> _stack;
	stack<int> _minstack;

	void push(int value)
	{
		_stack.push(value);
		if (_minstack.empty() || (value < _minstack.top()))
			_minstack.push(value);
		else
			_minstack.push(_minstack.top());
	}

	void pop()
	{
		_stack.pop();
		_minstack.pop();
	}

	void printMin()
	{
		if (!this->empty())
			printf("%d\n", _minstack.top());
		else
			printf("NULL\n");
	}

	bool empty()
	{
		return _stack.empty();
	}
};


int main()
{
	int n;
	StackWithMin stackwithmin;
	while (scanf_s("%d", &n) != EOF)
	{
		
		char c;
		int num;
		char eat;
		for (int i = 0; i < n; i++)
		{
			scanf_s("%c", &eat);
			scanf_s("%c", &c);
			if (c == 's')
			{
				scanf_s("%d", &num);
				stackwithmin.push(num);
			}
			else if (c == 'o')
				stackwithmin.pop();
			stackwithmin.printMin();
		}
	}
}