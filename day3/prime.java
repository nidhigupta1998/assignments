import java.util.Scanner;
class prime
{
 public static void main(String args[])
 {
  int temp;
  boolean p=true;
  Scanner s1=new Scanner(System.in);
  System.out.println("enter a no ");
  int n=s1.nextInt();
  int i;
  for(i=2;i<=n/2;i++)
  {
   temp=n%i;
   if(temp==0)
   {
    p=false;
    break;
   }
  }
  if(p)
  {
   System.out.println(" is a prime no "+n);
  }
  else
  {
   System.out.println(" is not a prime no "+n);
  }
 }
}