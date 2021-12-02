package com.sonata;

public class CountofDuplicates {
	public static void main(String[] args) {
		
		
		int arr[] = {1,2,3,4,5,3,3,3};
		int count = 1;
		int maxcount = 0;
		for(int i = 0; i<arr.length;i++) {
			count = 1;
			for(int j = i+1;j<arr.length;j++) {
				if(arr[i]==arr[j]) {
					count++;
				}
				if(count>maxcount) {
					maxcount++;
				}
			}
		}
		System.out.println("The highest number of duplicates is " + maxcount);
	}
}

