/** 
An attempt to make use of and implement ArrayLists 
Jean Dominique Jaymalin
*/

import java.util.*;

public class Prime1 {
		
	public static void main(String args[]){
	
		Scanner myScanner = new Scanner(System.in);
		int inputNo = myScanner.nextInt();
		
		for (int i=0; i<inputNo; i++) {
			int first = myScanner.nextInt();
			int second = myScanner.nextInt();
			
			Eratosthenes(first,second);
			
		}
		myScanner.close();
	}
	
	public static void Eratosthenes (int first, int last){
		List <Integer> primeList = new ArrayList<Integer> ();
		for (int i=2; i<=last; i++){
			primeList.add(i);
		}
		
		for( int i = 2; i < last; i++) {
			int p = i;
			
			while ((p * p) <= last){
				int j = p*p;
				
				while (j <= last) {
					if (primeList.contains(j)){
						primeList.remove(new Integer (j));
					}
					
					j = j+p;
				}
				
				if (primeList.contains(p++)){
					p++;
				}
				
			}
		}
		
		for (int prime: primeList){
			if (first <= prime && last >=prime)
				System.out.println(prime);
		}
		System.out.println("");
	}
}
