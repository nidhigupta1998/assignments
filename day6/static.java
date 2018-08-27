class StaticBlocks
{
static int a;
static
{
System.out.println("Static Block");
a=100;
}
public int getA()
{
return a;
}
}
class get{
public static void main(String args[])
{
System.out.println("Main loaded");
StaticBlocks obj=new StaticBlocks();
System.out.println("The value of a is "+obj.getA());
}
}