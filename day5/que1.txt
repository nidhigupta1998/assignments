import java.util.Scanner;
class array_waveform
{
pubic static void main(String[] args)
{
int arr[]={1,2,3,4,5,6,7,8,9,10};
int temp;
for(int i=0;i<9;i=i+2)
{
temp=arr[i];
arr[i]=arr[i+1];
arr[i+1]=temp;
}
for(int i=0;i<10;i++)
System.ot.println(arr[i]);
}
}