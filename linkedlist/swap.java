import java.util.Scanner;

 class Node<T>
{
    T d;
    Node<T> next;

    Node(T d)
    {
        this.d=d;
        this.next=null;
    }
}
public class replaceval{
    public static Node<Integer> get(Node<Integer> head,int a)
    {
                    Node<Integer> n=new Node<>(a);
            Node<Integer> temp=null;
            Node<Integer> p=null;
        if(head==null)
        {
            head=n;
        }
        else
        {
            temp=head;
            while(temp.next!=null)
            {
                temp=temp.next;
            }
temp.next=n;
           
        }
        p=head;
        return p;
        }

    
  
    public static void disp(Node<Integer> head)
    {
      Node<Integer> p=null;

        while(head!=null)
        {	System.out.print(head.d+"->");
			head = head.next;
		}
		System.out.print("null");
		
	
    }


public static Node<Integer> replace(Node<Integer> head,int a,int b)
    {
        
        int c=0;
        int c1=0;
       Node<Integer> n=new Node<>(0);
    Node<Integer> temp=head;
     Node<Integer>  forward=null;
      Node<Integer> prev=null;
       Node<Integer> temp1=head;
     Node<Integer>  forward1=null;
      Node<Integer> prev1=null;
        Node<Integer> temp2=null;
         Node<Integer> temp3=head;
   
      while(temp.next!=null)
      {
c++;
forward=temp.next;
prev=temp;
temp=temp.next;

        if(temp.d==a)
        {
            break;
        }
      }

while(temp.next!=null)
{
    c1++;
forward1=temp.next;
prev1=temp;
temp=temp.next;

        if(temp.d==b)
        {
            break;
        }
      }
      n.d=prev.next.d;
      prev.next.d=prev1.next.d;
      prev1.next.d=n.d;
      temp2=forward;
forward=forward1;
forward1=temp2;
return head;
}

    
public static void main(String args[])
{
    Scanner s=new Scanner(System.in);
    Node<Integer> head=null;
    Node<Integer> head1=null;
    Node<Integer> t=null;
    int a=s.nextInt();
    for(int i=0;i<a;i++)
    {
        int p=s.nextInt();
        head=get(head,p);
      
    }
    int l=s.nextInt();
  int k=s.nextInt();



  
   head=replace(head,l,k);

   disp(head);

}
}