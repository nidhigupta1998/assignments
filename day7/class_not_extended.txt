final class parent{
  public void display()
  {
    System.out.println("we are in class A");
  }
}
class child extends parent{
  public void display()
  {
    System.out.println("we are in class b");
  }
}

class final_1 {
  public static void main(String[] args) {
    child c=new child();
    c.display();
    System.out.println("we are in main");
  }
}