#include <iostream>
#include <string>
using namespace std;

class Solution
{
public:
        int strStr(string haystack, string needle)
        {
		if (needle.empty() )
			return 0;
		if( haystack.empty() )
                        return -1;
                int n = haystack.size();
                int m = needle.size();
                for(int i = 0 ;i <= n - m; i++)
                {
                        int j = 0;
                        for(; j < m; j++)
                        {
                                if(haystack[i + j] != needle[j])
                                        break;
                        }
                        if(j == m)
                                return i;
                }
                return -1;
        }
};


int main()
{
	Solution solu;
	cout<<solu.strStr("abcd","cd")<<endl;
}                                                                                                                                                                                                            
                 
