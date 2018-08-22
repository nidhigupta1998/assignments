import java.util.Scanner;
class great
{
public static void main(String[] args)
{

 Scanner in=new Scanner(System.in);
 int x,y,z;
 System.out.println("enter 3 nos");
 x=in.nextInt();
 y=in.nextInt();
 z=in.nextInt();
 if(x>y && x>z)
{
System.out.println(x);
}
else if(y>x && y>z)
{
System.out.println(y);
}
else
{
System.out.println(z);
}
}
}
