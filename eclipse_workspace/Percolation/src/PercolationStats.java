


public class PercolationStats {
	
	private int t;
	private double[] nums;
	
	public PercolationStats(int N,int T)
	{
		if((N<=0)||(T<=0))
			throw new IllegalArgumentException();
		nums=new double[T];
		t=T;
		for(int i=0;i<T;i++)
		{
			Percolation perc=new Percolation(N);
			double num=0;
			for(int j=0;j<N*N;j++)
			{
				int random=StdRandom.uniform(N*N);
				int row=random/N+1;
				int col=random%N+1;
				if(!perc.percolates()){
					perc.open(row, col);
					num++;
				}
				else {
					break;
				}
			}
			nums[i]=num/(N*N);
		}
	}
	
	public double mean()
	{
		return StdStats.mean(nums);
	}
	
	public double stddev() {
		return StdStats.stddev(nums);
	}
	
	public double confidenceLo() {
		return mean()-1.96*stddev()/Math.sqrt(t);
	}

	public double confidenceHi() {
		return mean()+1.96*stddev()/Math.sqrt(t);
	}
	
	public static void main(String[] args)
	{
		PercolationStats percolationStats=new PercolationStats(200, 10000);
		StdOut.printf("%s", "% java PercolationStats 200 100");
		StdOut.printf("%s", "\nmean\t=");
		StdOut.print(percolationStats.mean());
		StdOut.printf("%s", "\nstddev\t=");
		StdOut.print(percolationStats.stddev());
		StdOut.print("\n");
		StdOut.print("95% confidence interval =");
		StdOut.print(percolationStats.confidenceLo());
		StdOut.print(",\t");
		StdOut.print(percolationStats.confidenceHi());
	}
}
