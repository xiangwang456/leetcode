

template<typename T> class MaxPQ
{
public:
	MaxPQ();
	bool isEmpty();
	int size();	
	void Insert(T val);
	T delMax();
	void swim(int k);
	void sink(int k);
	void exch(T &i, T &j);
	void sort();
	void resize(int n);
private:
	int n;
	int max;
	T *data;


};
