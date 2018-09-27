import java.util.*;
class dynamicarray
{
	public static void create()
	{
		Scanner s = new Scanner(System.in);
		int[] arr = new int[5];
		int index = 0;
		System.out.println("Enter array Elements :");
		while(index>=0)
		{
			if(index<arr.length)
			{
				arr[index] = s.nextInt();
				index++;
			}
			else
			{
				System.out.println("Extending Size :");
				int l = (int)(arr.length*1.5);
				int[] temp = new int[l];
				for(int i=0;i<arr.length;i++)
				{
					temp[i] = arr[i];
				}
				arr = temp;
				index++;
			}
		}
	}
	public static void print()
	{
	}
}
class declare
{
	public static void main(String[] args)
	{
		dynamicarray obj = new dynamicarray();
		obj.create();
	}
}