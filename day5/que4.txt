import java.util.Scanner;
class rectangle_area
{
int length;
int breadth;
int CalculateArea()
{
return length*breadth;
}
}
class main{
public static void main(string[] args)
{
int z;
Scanner scan=new Scanner (System.in);
rectangle_area rec=new rectangle_area();
rec.length=scan.nextInt();
rec.breadth=scan.nextInt();
z=rec.CalculateArea();
System.out.println(z);
}
}