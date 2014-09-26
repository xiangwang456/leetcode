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
    	first.before=node;
    	last.before=node;
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
    	}
    	else{
    		newNode.next=first.next;
    		first.next.before=newNode;
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
    		last.before.next=newNode;
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
			last.before.next=null;
			last=last.before;
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

		private int i=size;
		public boolean hasNext() {
			return isEmpty()?false:true;
		}

		public Item next() {
			
			return node.next.item;
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