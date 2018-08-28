class parent {
int x;
parent()
{
  System.out.println("default constructor");
}
parent(int a)
{
 this();
 System.out.println("a = "+a);
}

}

class Defaultconst{
  public static void main(String[] args) {
    parent c=new parent(20);
    System.out.println("We are in main");
  }
}