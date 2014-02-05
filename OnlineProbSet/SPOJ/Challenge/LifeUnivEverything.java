import java.util.Scanner;


public class Main
{
  public static void main (String[] args) throws java.lang.Exception
  {
     int curNum;
     Scanner myScanner = new Scanner(System.in);
     curNum = myScanner.nextInt();
     while (curNum != 42){
    	 System.out.println(curNum);
    	 curNum = myScanner.nextInt();
     }
  }
}
