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
	public Nodes arrange(Nodes head,Nodes newhead)
	{
		Nodes ptr= head;
		Nodes ndHead=null;
		Nodes b=null;
		Nodes a=null;
		while(ptr!=null)
		{
			Nodes temp = new Nodes();
			if(ptr.data%2!=0)
			{
				temp.data=ptr.data;
				temp.next=null;
				if(newhead==null)
				{
					newhead=temp;
				}
				else
				{
					Nodes pre=newhead;
					while(pre.next!=null)
					{
						pre=pre.next;
					}
					pre.next=temp;
					a=temp;
				}
			}
			else
			{
				temp.data=ptr.data;
				temp.next=null;
				if(ndHead==null)
				{
					ndHead=temp;
				}
				else
				{
					Nodes prt=ndHead;
					while(prt.next!=null)
					{
						prt=prt.next;
					}
					prt.next=temp;
				}
			}
			ptr=ptr.next;
		}
		a.next=ndHead;
		return newhead;
	}
		}
public class arroddeven {

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
    Nodes newhead=null;
    head=l1.arrange(head, newhead);
    l1.display(head);
	}
}