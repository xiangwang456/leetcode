#include <iostream>
using namespace std;

void my_atoi(const char *str, bool &istrans,int &result)
{
	if (str == NULL||*str=='\0')
	{
		istrans = false;
		return;
	}

	long long sum = 0;
	const char * digit = str;
	bool flag = true;

	bool isFirst = true;
	while (*digit != '\0')
	{
		//判断是否有符号位，符号位必须是第一位
		if (isFirst)
		{
			if (*digit == '+')
				digit++;
			else if (*digit == '-')
			{
				flag = false;
				digit++;
			}
			isFirst = false;
		}
		
		if (*digit <='9'&&*digit>='0')
		{
			sum = 10 * sum + (*digit - '0');
			digit++;
		}
		else
		{
			istrans = false;
			return;
		}
	}

	//符号位
	if (flag == false)
		sum *= -1;
	
	//判断溢出
	if (sum > (int)0x7fffffff || sum < (int)0x80000000)
		istrans = false;
	else
	{
		istrans = true;
		result = (int)sum;
	}
}


int main()
{
	char nums[10];
	while (cin >> nums)
	{
		bool isTrans = false;
		int sum = 0;
		my_atoi(nums, isTrans, sum);
		if (isTrans)
			cout << sum << endl;
		else
			cout << "My God" << endl;

		
	}
}