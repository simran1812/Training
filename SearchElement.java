package com.sonata;

public class SearchElement {
public static void main(String args[]) {
		
		

		int[] age= new int[6];
		age[0]=1;
		age[1]=2;
		age[2]=3;
		age[3]=4;
		age[4]=5;
		age[5]=6;
		int num=4;
		System.out.println("Searching for "+num+" in an array");

		for(int i=0;i<age.length;i++) {
			if(num==age[i]) {
				System.out.println("Element found at "+i+" index");
			}
			
			}
		
}
}
