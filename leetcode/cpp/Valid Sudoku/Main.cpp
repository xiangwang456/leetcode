#include "Solution.cpp"
#include <stdlib.h>
int main() {
	Solution solution;
	bool result;
	vector<vector<char>> board;

	char value1[9] = { '5', '3', '.', '.', '7', '.', '.', '.', '.' };
	vector<char> subBoard(value1, value1 + 9);
	board.push_back(subBoard);

	char value2[9] = { '6', '.', '.', '1', '9', '5', '.', '.', '.' };
	vector<char> subBoard1(value2, value2 + 9);
	board.push_back(subBoard1);

	char value3[9] = { '.', '9', '8', '.', '.', '.', '.', '6', '.' };
	vector<char> subBoard2(value3, value3 + 9);
	board.push_back(subBoard2);

	char value4[9] = { '8', '.', '.', '.', '6', '.', '.', '.', '3' };
	vector<char> subBoard3(value4, value4 + 9);
	board.push_back(subBoard3);

	char value5[9] = { '4', '.', '.', '8', '.', '3', '.', '.', '1' };
	vector<char> subBoard4(value5, value5 + 9);
	board.push_back(subBoard4);

	char value6[9] = { '7', '.', '.', '.', '2', '.', '.', '.', '6' };
	vector<char> subBoard5(value6, value6 + 9);
	board.push_back(subBoard5);

	char value7[9] = { '.', '6', '.', '.', '.', '.', '2', '8', '.' };
	vector<char> subBoard6(value7, value7 + 9);
	board.push_back(subBoard6);

	char value8[9] = { '.', '.', '.', '4', '1', '9', '.', '.', '5' };
	vector<char> subBoard7(value8, value8 + 9);
	board.push_back(subBoard7);

	char value9[9] = { '.', '.', '.', '.', '8', '.', '.', '7', '9' };
	vector<char> subBoard8(value9, value9 + 9);
	board.push_back(subBoard8);

	result = solution.IsValidSudoku(board);
	cout << result << endl;

	system("pause");
}