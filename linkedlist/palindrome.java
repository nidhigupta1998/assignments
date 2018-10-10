
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
class palindrome{
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
            while(temp.nex=t!=null)
            {
                temp=temp.next;
            }
temp.next=n;
           
        }
        p=head;
        return p;
        }
public static void palindrome(Node<Integer> head)
  {     int c=0;
          Node<Integer> temp=head;
          Node<Integer> temp1=null;
          Node<Integer> head1=null;

            Node<Integer> fast=head.next;
            Node<Integer> slow=head;
            
        /*  while(temp!=null)
            {
              temp=temp.next;
              c++;
            }
            */
            while(fast!=null && fast.next!=null)
            {
              slow=slow.next;
              fast=fast.next.next;
              c++;
            }


int h=0;
h=c/2;
System.out.println(c);
int i,f=0;

            head1=rev(slow);
            
      temp1=head1;
               for(i=0;i<h;i++)
               {
           temp=temp.next;     
           temp1=temp1.next;
           if(temp.d!=temp1.d)
           {
      f=1;
           }
               }
               if(f==1)
               {
                    System.out.println("not palindrome");
               }
               else
             {
               System.out.println("it is a palindrome");
             }

  }
    
    public static Node<Integer> rev(Node<Integer> head)
    {
        Node<Integer> forward=null;
           Node<Integer> current=head;
            Node<Integer> prev=null;

            while(current!=null)
            {
                forward=current.next;
                current.next=prev;
                prev=current;
                current=forward;
                          }
                          head=prev;
                          return head;
    }
    public static void disp(Node<Integer> head)
    {
      Node<Integer> p=null;

        while(head!=null)
        {	System.out.print(head.d+" ");
			head = head.next;
		}
		System.out.println("null");
		
		System.out.println(head);
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
   /*     if(head.next.d==a)
        {
          while(temp!=null)
          {
 if(temp.d=b)
 {
 }
          }
        }
        */
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
  
 
//head1=checkpalindrome(head1,head);
  head=rev(head);
  palindrome(head);
   // t=rev(head);
  //  head=replace(head,4,9);

  //  disp(head1);

}
}