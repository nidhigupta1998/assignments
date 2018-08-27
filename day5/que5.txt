import java.util.Scanner;
class complex
{
int real;
int imaginary;
void display()
{
System.out.println(real+"+"+imaginary+"i");
}
}
class input
{
public static void main(String[] args)
{
Scanner scan=new Scanner(System.in);
complex rec=new complex();
rec.real=scan.nextInt();
rec.imaginary=scan.nextInt();
rec.display();
}
}