import java.io.*;
class Writer
{
  public static void main(String args[])
{
  try
  {
File f = new File("hello.txt");
    FileWriter w = new FileWriter("abcd.txt");
    String str;
  str=f.getAbsolutePath();
    w.write(str);
    w.close();
    System.out.println("complete");
  }
  catch(IOException e)
  {
    e.printStackTrace();
  }
  }
}