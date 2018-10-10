import java.util.*;
class Nodes
{
	private int data;
	private Nodes next;
	public Nodes insert(Nodes head,int data1)
	{
		Nodes temp = new Nodes();
		temp.data=data1;
		temp.next=null;
		if(head==null)
		{
			head=temp;
		}
		else
		{
			Nodes ptr=head;
			while(ptr.next!=null)
			{
				ptr=ptr.next;
			}
			ptr.next=temp;
		}
		return head;
	}
	public void display(Nodes head)
	{
		Nodes ptr=head;
		while(ptr.next!=null)
		{
			System.out.print(ptr.data+" ");
			ptr=ptr.next;
		}
		System.out.println(ptr.data);
	}
	public Nodes merging(Nodes head,Nodes head1)
	{
		Nodes ptr=head;
		while(ptr.next!=null)
		{
			ptr=ptr.next;
		}
		ptr.next=head1;
		Nodes ptr1=head;
		Nodes pre=ptr1;
		while(ptr1.next!=null)
		{
			pre=ptr1;
			while(pre!=null)
			{
				if(ptr1.data>pre.data)
				{
					int temp=ptr1.data;
					ptr1.data=pre.data;
					pre.data=temp;
					pre=pre.next;
				}
				pre=pre.next;
			}
			ptr1=ptr1.next;
		}
		return head;
	}
	}
public class mergetwolist {

	public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    int size=scan.nextInt();
    Nodes head=null;
    Nodes l1=new Nodes();
    for(int i=0;i<size;i++)
    {
    	int num=scan.nextInt();
    	head=l1.insert(head, num);
    }
    l1.display(head);
    Nodes head1=null;
    Nodes l2=new Nodes();
    for(int i=0;i<size;i++)
    {
    	int num=scan.nextInt();
    	head1=l2.insert(head1, num);
    }
    l2.display(head1);
    head=l1.merging(head, head1);
    l1.display(head);
	}

}