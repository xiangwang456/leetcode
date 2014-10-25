#include <iostream>

using namespace std;

bool IsAnagram(char *pstr1,char *pstr2)
{
	if (pstr1 == NULL || pstr2 == NULL)
		return false;
	int hashtable[26];
	for (int i = 0; i < 26; i++)
		hashtable[i] = 0;
	char *pchar = pstr1;
	while (*pchar != '\0')
	{
		hashtable[*pchar - 'a']++;
		pchar++;
	}
	pchar = pstr2;
	while (*pchar != '\0')
	{
		hashtable[*pchar - 'a']--;
		pchar++;
	}
	int i;
	for (i = 0; i < 26;i++)
	if (hashtable[i] != 0)
		break;
	return i == 26 ? true : false;
}

int main()
{
	char str1[20], str2[20];
	while (cin >> str1 >> str2)
	{
		cout << str1 << " and " << str2;
		IsAnagram(str1, str2) ? cout << " is " : cout << " isn't ";
		cout << "anagram. " << endl;
	}
}