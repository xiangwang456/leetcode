#include <iostream>
#include <map>
#include <time.h>
#include <unordered_map>
#include <stdlib.h>

using namespace std;

int main()
{
	long totaltime;
	clock_t begin, end;
	map<int, int> m_map;
	unordered_map<int, int> m_unoderdmap;

	int count = 10000;
	cout << "==========================map=========================" << endl;
	begin = clock();
	for (int i = 0; i < count; i++)
		m_map.insert(make_pair(i, i));
	end = clock();
	totaltime = end - begin;
	cout << "insert " << count << " numbers time:" << totaltime <<" ms"<< endl;
	cout << "average time :" << (double)totaltime / count << "ms" << endl;

	begin = clock();
	for (int i = 0; i < count; i++)
		m_map.find(i);
	end = clock();
	totaltime = end - begin;
	cout << "search " << count << " numbers time:" << totaltime << " ms" << endl;
	cout << "average time :" << (double)totaltime / count << "ms" << endl;

	begin = clock();
	for (int i = 0; i < count; i++)
		m_map.erase(i);
	end = clock();
	totaltime = end - begin;
	cout << "delete " << count << " numbers time:" << totaltime << " ms" << endl;
	cout << "average time :" << (double)totaltime / count << "ms" << endl;

	cout << "==========================unorderd_map=========================" << endl;
	begin = clock();
	for (int i = 0; i < count; i++)
		m_unoderdmap.insert(make_pair(i, i));
	end = clock();
	totaltime = end - begin;
	cout << "insert " << count << " numbers time:" << totaltime << " ms" << endl;
	cout << "average time :" << (double)totaltime / count << "ms" << endl;
	
	begin = clock();
	for (int i = 0; i < count; i++)
		m_unoderdmap.find(i);
	end = clock();
	totaltime = end - begin;
	cout << "search " << count << " numbers time:" << totaltime << " ms" << endl;
	cout << "average time :" << (double)totaltime / count << "ms" << endl;


	begin = clock();
	for (int i = 0; i < count; i++)
		m_unoderdmap.erase(i);
	end = clock();
	totaltime = end - begin;
	cout << "delete " << count << " numbers time:" << totaltime << " ms" << endl;
	cout << "average time :" << (double)totaltime / count << "ms" << endl;
	system("pause");
}