class parent {
public void display()
{
  System.out.println("you are at class A");
  }
}
class child extends parent{
  public void display()
  {
    super.display();
    System.out.println("you are at class B");
  }
}
class Without_obj{
  public static void main(String[] args) {
    child c=new child();
    c.display();
    System.out.println("We are in main");
  }
}