abstract class vehicle
{
abstract public void Start();
public void Stop()
{
System.out.println("Stop() called for");
}
}
class twowheeler extends Vehicle
{
public void Start()
[
System.out.println("Start() for twowheeler called");
}
public void Stop()
{
super.Stop();
System.out.println("twowheeler");
}
}
class fourwheeler extends Vehicle
{
public void Start()
{
System.out.println("Start() for fourwheeler called");
}
public void Stop()
{
super.Stop();
System.out.println("fourwheeeler");
}
}
class vehicle1
{
public staticvoid main(String[] args)
{
twowheeler a= new twowheeler();
fourwheeler b=new fourwheeler();
a.Start();
b.Start();
a.Stop();
b.Stop();
}
}