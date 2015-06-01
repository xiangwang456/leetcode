class Solution {
public:

	//时间复杂度 O(n） 空间复杂度O(1)
	int removeDuplicates(int A[], int n) 
	{
		if (n <= 0 || A == nullptr)
			return 0;
		int index = 0;
		for (int i = 1; i < n; i++)
		{
			if (A[index] != A[i])
				A[++index] = A[i];
		}

		return index + 1;
	}
};