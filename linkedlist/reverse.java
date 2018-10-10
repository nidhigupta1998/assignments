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
public class printreverse{
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
        { System.out.print(head.d+"->");
      head = head.next;
    }
      System.out.print("null");


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
  
 

  head=rev(head);


 disp(head);

}
}