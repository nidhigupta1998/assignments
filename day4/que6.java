search array
import java.util.Arrays;
import java.util.Scanner;
class Array {
  public static void main(String[] args) {
    int i,j,a,b,c=0,n;
    Scanner o=new Scanner(System.in);
    System.out.println("how many elements you want to enter:");
    n=o.nextInt();
    System.out.println("enter elements:");
    int arr[]=new int[n];
    for(i=0;i<n;i++)
    {
      arr[i]=o.nextInt();
    }
    System.out.println("enter element you want to search:");
    a=o.nextInt();
    for(i=0;i<arr.length;i++){
    if(arr[i]==a)
    {System.out.println(a+" found");
    break;
    }
    c++;
    }
    if(c==arr.length)
    {
      System.out.println(a+" not found");
    }
}
}