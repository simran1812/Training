package com.sonata;

public class DuplicateElements {
public static void main(String args[]) {
	
		

		int[] age= new int[6];
		age[0]=1;
		age[1]=9;
		age[2]=1;
		age[3]=4;
		age[4]=4;
		age[5]=9;
		for(int i=0;i<age.length;i++) {
			for(int j=i+1;j<age.length;j++) {
				if(age[j]==age[i]) {
					System.out.println("duplicate elements in array is "+age[i]);
					
				}	
			}
		}
}
}

