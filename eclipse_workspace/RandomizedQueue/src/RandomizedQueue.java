import java.awt.event.ItemEvent;
import java.util.Iterator;


public class RandomizedQueue<Item> implements Iterable<Item> {

	private Item[] rq;
	private int size=0;
	
	public RandomizedQueue()                 // construct an empty randomized queue
	{
		rq=(Item[])new Object[2];
	}
	public boolean isEmpty()                 // is the queue empty?
	{
		return size==0;
	}
	public int size()                        // return the number of items on the queue
	{
		return size;
	}
	
	private void resize(int newsize) {
		 Item[] newrp=(Item[])new Object[newsize];
		 for(int i=0;i<size;i++)
			 newrp[i]=rq[i];
		 rq=newrp;
		 
	}
	public void enqueue(Item item)           // add the item
	{
		if(item == null) throw new java.lang.NullPointerException();
		if(rq.length==size)
			resize(size*2);
		rq[size]=item;
		size++;
	}
	public Item dequeue()                    // delete and return a random item
	{
		if(isEmpty()) throw new java.util.NoSuchElementException();
		int index=(int)(Math.random()*size);
		Item item=rq[index];
		if(index!=size-1)
			rq[index]=rq[size-1];
		rq[size-1]=null;
		
		size--;
		if(rq.length==size*4&&size>0)
			resize(rq.length/2);
		
		return item;
	}
	public Item sample()                     // return (but do not delete) a random item
	{
		if(isEmpty()) throw new java.util.NoSuchElementException();
		int index=(int) (Math.random()*size);
		return rq[index];
	}
	public Iterator<Item> iterator()         // return an independent iterator over items in random order
	{
		return new RandomQueueIterator();
		
	}
	
	private class RandomQueueIterator implements Iterator<Item>{

		private int now=0;
		public boolean hasNext() {
			
			return now<size;
		}

		public Item next() {
			return rq[now++];
			
		}

		@Override
		public void remove() {
			// TODO Auto-generated method stub
			
		}
		
	}
	
	public static void main(String[] args)   // unit testing
	{
		
	}
	
	

}
