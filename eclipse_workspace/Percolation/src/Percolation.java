import org.omg.CORBA.UnionMember;


public class Percolation {
	
	private boolean[] nn;
	private int n;
	private WeightedQuickUnionUF WQUF;
	
	public Percolation(int N)
	{
		this.n=N;
		if(n<=0)
			throw new IllegalArgumentException();
		nn=new boolean[n*n];
		WQUF=new WeightedQuickUnionUF(n*n+2);
		for(int i=0;i<n;i++)
			{
				for(int j=0;j<n;j++)
				{
					nn[n*i+j]=false;
				}
			}					
		
	}
	
	public void open(int i,int j) {
		int ii=i-1;
		int jj=j-1;
		if((i<1)||(i>n)||(j<1)||(j>n)){
			throw new IndexOutOfBoundsException();
		}
		
		if(isOpen(i, j)){
			return;
		}
		
		nn[ii*n+jj]=true;
		
		//first line  union nn[n*n]
		if(i==1){
			WQUF.union(ii*n+jj, n*n);
		}
		
		//last line union nn[n*n+1]
		if(i==n){
			WQUF.union(ii*n+jj, n*n+1);
		}
		
		//union up
		if((ii>=1)&&(nn[(ii-1)*n+jj])){
			WQUF.union(ii*n+jj, (ii-1)*n+jj);
		}
		
		//union down
		if((ii<n-1)&&(nn[(ii+1)*n+jj])){
			WQUF.union(ii*n+jj, (ii+1)*n+jj);
		}
		
		//union left
		if((jj>=1)&&(nn[ii*n+j-1])){
			WQUF.union(ii*n+jj, ii*n+jj-1);
		}
		
		//union right
		if((jj<n-1)&&(nn[ii*n+jj+1])){
			WQUF.union(ii*n+jj,ii*n+jj+1);
		}
			
	}
	
	public boolean isOpen(int i,int j)
	{
		if((i<1)||(i>n)||(j<1)||(j>n))
			throw new IndexOutOfBoundsException();
		return nn[(i-1)*n+j-1];
		
	}
	
	public boolean isFull(int i,int j) 
	{
		if((i<1)&&(i>n)||(j<1)||(j>n))
			throw new IndexOutOfBoundsException();
		return ((nn[(i-1)*n+j-1])&&(WQUF.connected((i-1)*n+j-1, n*n)));
	}
	
	public boolean percolates() 
	{
		return WQUF.connected(n*n, n*n+1);
	}
	
	public static void main(String[] arg) {
		
		Percolation p=new Percolation(1000);
		int i=0;
		while(!p.percolates())
		{
			i++;

			p.open(StdRandom.uniform(1, 1001),StdRandom.uniform(1, 1001));
		}
		
		StdOut.println(i);
	}
}
