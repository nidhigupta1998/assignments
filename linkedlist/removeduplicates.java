import java.util.*;
class node
{
	private int data;
	private node next;
	public node insert(node head,int data)
	{
		node temp =new node();
		temp.data=data;
		temp.next=null;
		if(head==null)
		{
			head=temp;
		}
		else
		{
			node ptr=head;
			while(ptr.next!=null)
			{
				ptr=ptr.next;
			}
			ptr.next=temp;
		}
		return head;
	}
	public void display(node head)
	{
		node ptr=head;
		while(ptr.next!=null)
		{
			System.out.print(ptr.data+" ");
			ptr=ptr.next;
		}
		System.out.println(ptr.data);
	}
	public node remDup(node head)
	{
		node ptr=head;
		node pre=head;
		int temp=ptr.data;
		while(ptr.next!=null)
		{
			
			if(ptr.next.data==temp)
			{
				pre=ptr;
				ptr.next=ptr.next.next;
			}
			else
			{
				temp=ptr.next.data;
				pre=ptr;
				ptr=ptr.next;
			}
		}
		return head;
	}
}
public class removeduplicates {

	public static void main(String[] args) {
	  Scanner scan = new Scanner(System.in);
      int size= scan.nextInt();
      node head=null;
      node l1 = new node();
      for(int i=0;i<size;i++)
      {
    	  int num=scan.nextInt();
    	  head=l1.insert(head, num);
      }
      l1.display(head);
      l1.remDup(head);
      l1.display(head);
	}

}