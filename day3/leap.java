import java.util.Scanner;
class leap
{
public static void main(String[] args)
{

 Scanner in=new Scanner(System.in);
 int x;
 boolean flag=false;
 System.out.println("enter a no"); 
 x=in.nextInt();
if(x%400==0)
{
flag=true;
}
else if(x%100==0)
{
flag=false;
}
else if(x%4==0)
{
flag=true;
}
else
{
flag=false;
}

if(flag)
{
System.out.println("leap year");
}
else
{
System.out.println("Non leap year");
}
}
}