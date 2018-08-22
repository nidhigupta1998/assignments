import java.util.Scanner;
class pal
{
public static void main(String[] args)
{
 Scanner in=new Scanner(System.in);
 int x,y,z,rev=0;
 System.out.println("enter a no");
 x=in.nextInt();
 int temp;
 temp=x;
while(temp!=0)
{
int rem=temp%10;
rev=(rev*10)+rem;
temp=temp/10;
}
if(rev==x)
{
System.out.println("Palindrone");
}
else
{
System.out.println("Non Palindrone");
}
}
}
