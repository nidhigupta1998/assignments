
interface animal
{
void speak();
void eat();
}

class cat implements animal
{
public void speak()
{
System.out.println("cat meaow");
}
public void eat()
{
System.out.println("cat drinks milk");
}
public static void main(String args[])
{
cat c=new cat();
c.speak();
c.eat();
}
}

class dog implements animal
{
public void speak()
{
System.out.println("dog barks");
}
public void eat()
{
System.out.println("dog eats pedigree");
}
public static void main(String args[])
{
dog d=new dog();
d.speak();
d.eat();
}
} 