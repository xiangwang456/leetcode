import java.security.acl.LastOwnerException;
import java.util.Iterator;

public class Deque<Item> implements Iterable<Item> {
	
	private int size;
	private Node first;
	private Node last;
	private Node node;
	private class Node
	{
		Item item;
		Node next;
		Node before;
	}
    public Deque()                           // construct an empty deque
    {
    	node=new Node();
    	node.before=null;
    	first=node.next;
    	last=node.next;
    	size=0;
    }
    
    public boolean isEmpty()                 // is the deque empty?
    {
    	return (size==0)?true:false;
    }
    
    public int size()                        // return the number of items on the deque
    {
    	return this.size;
    }
    
    public void addFirst(Item item)          // insert the item at the front
    {
    	if(item==null)
    		throw new java.util.NoSuchElementException();
   
    	Node newNode=new Node();
    	newNode.item=item;
    	if(size==0){
    		node.next=newNode;
    		last=first=newNode;
    		newNode.before=node;
    	}else{
    		//StdOut.print(size);
    		newNode.next=first;
    		if(size!=1){
    			first.next.before=newNode;
    		}
    		node.next=newNode;
    		newNode.before=node;
    		first=newNode;
    		
    	}
    	size++;
    	
    }
    public void addLast(Item item)           // insert the item at the end
    {
    	if(item==null)
    		throw new java.util.NoSuchElementException();
    	Node newNode=new Node();
    	newNode.item=item;
    	if(size==0){
    		node.next=newNode;
    		last=first=newNode;
    		newNode.before=node;
    	}else{
    		last.next=newNode;
    		
    		newNode.before=last;
    		last=newNode;
    	}
    	size++;
    }
    
    public Item removeFirst()                // delete and return the item at the front
    {
    	if(size==0)
    		throw new java.util.NoSuchElementException();
    	Item item=first.item;
    	if(size==1){
    		node.next=null;
    		first=last=node;
    	}else{
    		node.next=first.next;
    		first.next.before=node;
    		first=node.next;
    	}
    		
    	size--;
    	return item;
    }
    
    public Item removeLast()                 // delete and return the item at the end
    {
    	if(size==0)
    		throw new java.util.NoSuchElementException();
    	Item item=last.item;
    	if(size==1)
    	{
    		node.next=null;
    		first=last=node;
    	}else {
    		//last.before.next=null;
    		last=last.before;
			
			last.next=null;
			
		}
    	
    	size--;
    	return item;
    	
    	
    }
    
    public Iterator<Item> iterator()         // return an iterator over items in order from front to end
    {
    	return new DeckIterator();
    }
    
    private class DeckIterator implements Iterator<Item>
    {

		private Node iterNode=node;
		public boolean hasNext() {
			if(iterNode.next==null)
				return false;
			else {
				return true;
			}
		}

		public Item next() {
			
			iterNode=iterNode.next;
			return iterNode.item;
			
		}

		@Override
		public void remove() {
			// TODO Auto-generated method stub
			
		}
    	
		
    }
    public static void main(String[] args)   // unit testing
    {
    	Deque<String> ideck=new Deque<String>();
    	ideck.addFirst("first6");
    	ideck.addFirst("first5");
    	ideck.addFirst("first4");
    	ideck.addFirst("first3");
    	ideck.addFirst("first2");
    	ideck.addFirst("first1");
    	
    	ideck.addLast("last7");
    	ideck.addLast("last8");
    	ideck.addLast("last9");
    	ideck.addLast("last10");
    	ideck.addLast("last11");
    
    	//first2 first2 first2 first1 last1 last2 
  
    	for(int i=0;i<6;i++)
    	{
    		ideck.removeLast();
    	}
    	
    	
    	/*ideck.removeLast();
    	ideck.removeLast();*/
    	//ideck.removeLast();
    	for(String s :ideck)
    	{
    		StdOut.printf(s+"\n");
    	}
    	
    		
    }
}