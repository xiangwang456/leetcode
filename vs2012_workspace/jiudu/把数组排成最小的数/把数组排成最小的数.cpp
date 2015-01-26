#include <iostream>
#include <string>
#include <algorithm>
#include <stdio.h>

using namespace std;

/*
jiudu runtimeerror 
*/
// const int MaxNumberlength = 10;
// char *g_str1 = new char[2 * MaxNumberlength + 1];
// char *g_str2 = new char[2 * MaxNumberlength + 1];
// 
// int Compare(const void * strNum1,const void *strNum2)
// {
// 	strcpy(g_str1, *(char **)strNum1);
// 	strcat(g_str1, *(char **)strNum2);
// 
// 	strcpy(g_str2, *(char **)strNum2);
// 	strcat(g_str2, *(char **)strNum1);
// 	
// 	return strcmp(g_str1, g_str2);
// }
// 
// void PrintMinNumber(int *num, int length)
// {
// 	if (num == NULL&&length <= 0)
// 		return;
// 	char **strNumers = (char **)(new int[length]);
// 	for (int i = 0; i < length; i++)
// 	{
// 		strNumers[i] = new char[MaxNumberlength + 1];
// 		sprintf(strNumers[i], "%d", num[i]);
// 	}
// 	qsort(strNumers, length, sizeof(char*), Compare);
// 	for (int i = 0; i < length; i++)
// 		cout << strNumers[i];
// 	cout << endl;
// 	for (int i = 0; i < length; i++)
// 		delete strNumers[i];
// 	delete[] strNumers;
// }


string itostring(int i)
{
	string str = "";
	while (i != 0)
	{
		str += i % 10;
		i /= 10;
	}
// 	for (int i = 0; i < str.length() / 2; i++) {
// 		char ch = str[i];
// 		str[i] = str[str.length() - 1 - i];
// 		str[str.length() - 1 - i] = ch;
// 	}
	reverse(str.begin(), str.end());
	return str;
}

bool Compare(int n1, int n2)
{
	string s1 = itostring(n1);
	string s2 = itostring(n2);
	return (s1 + s2) < (s2 + s1);
}
void PrintMinNumber(int *nums, int n)
{
	sort(nums, nums + n, Compare);
	for (int i = 0; i < n; i++)
		cout << nums[i];
	cout << endl;
}
int main()
{
	int n;
	while (cin >> n)
	{
		int *nums = new int[n];
		for (int i = 0; i < n; i++)
			cin >> nums[i];
		PrintMinNumber(nums, n);
	}
}