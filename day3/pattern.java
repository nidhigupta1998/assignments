import java.util.Scanner;
class pat
{
public static void main(String[] args)
{

 Scanner in=new Scanner(System.in);
 int x,i,j;
 x=in.nextInt();
 for(i=1;i<=x;i++)
 {
 for(j=1;j<=i;j++)
 {
  System.out.print("*");
 }
 System.out.print("n");
 }
}
}