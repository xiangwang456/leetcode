#include <stdio.h>
#include <string.h>

void Rerverse(char *start,char *end)
{
	if(start==NULL||end==NULL)
		return ;
	while (start<end)
	{
		char temp=*start;
		*start=*end;
		*end=temp;
		start++;
		end--;
	}
}

void LeftRotateString(char *str,int n)
{
	int length=static_cast<int>(strlen(str));
	if(str==NULL||n>length||n<0||length<=0)
		return;

	char *firstStart=str;
	char *firstEnd=str+n-1;
	char *SecondStart=str+n;
	char *SecondEnd=str+length-1;
	
	Rerverse(firstStart,firstEnd);
	Rerverse(SecondStart,SecondEnd);
	Rerverse(firstStart,firstStart+length-1);

}

int main()
{

	char str[1000];
	int n;
	while(scanf("%s%d",str,&n)!=EOF)
	{
		n=n%strlen(str);
		LeftRotateString(str,n);
		printf("%s\n",str);
	}
	return 0;
}