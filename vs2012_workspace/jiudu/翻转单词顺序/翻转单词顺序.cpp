#include <iostream>
#include <stdio.h>

using namespace std;

void Reverse(char *start,char *end)
{
	if(start==NULL||*end==NULL)
		return;
	while(start<end)
	{
		char temp=*start;
		*start = *end;
		*end = temp;
		start++;
		end--;
	}

}

void ReverseSentence(char *sentence)
{
	if(sentence==NULL||*sentence=='\0')
		return;

	char *begin=sentence;
	char *end=sentence;
	while(*end!='\0')
		end++;
	end--;

	Reverse(begin,end);
	end=begin=sentence;
	while(*begin!='\0')
	{
		if(*begin==' ')
		{
			begin++;
			end++;
		}
		else if(*end==' '||*end=='\0')
		{
			Reverse(begin,--end);
			begin=++end;
		}
		else
		{
			end++;
		}
	}

}

int main()
{
	char sen[50000];
	while(gets(sen))
	{
		ReverseSentence(sen);
		printf("%s\n",sen);
	}
	return 0;
}