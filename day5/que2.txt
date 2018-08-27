class Test
{
static int i;
int j;
static 
{
i=10;
System.out.println("static block");
}
}
class static1
{
public static void main(String[] args)
{
System.out.println(Test.i);
}
}