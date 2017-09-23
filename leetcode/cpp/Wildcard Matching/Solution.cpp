#include <stdio.h>

bool isMatch(char* s, char* p) {
	if (*p == '*'){
		while (*p == '*') p++;
		if (*p == '\0') return true;
		while (*s != '\0' && !isMatch(s, p))
			++s;
		return *s != '\0';
	}
	else if (*p == '\0' || *s == '\0')
		return *p == *s;
	else if (*p == '?' || *p == *s)
		return isMatch(++s, ++p);
	else
		return false;
}

int main()
{
	char* s = "b";
	char* p = "?*?";
	printf("%d", isMatch(s, p));
	scanf(s);
}