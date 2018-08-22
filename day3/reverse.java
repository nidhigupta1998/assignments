import java.util.Scanner;
class rev
{
public static void main(String[] args)
{
Scanner in=new Scanner(System.in);
int num;
int rev=0;
System.out.println("enter a no");
num=in.nextInt();
int temp;
temp=num;
while(temp!=0)
{
int rem=temp%10;
rev=(rev*10)+rem;
temp=temp/10;
}
System.out.println(rev);
}
}