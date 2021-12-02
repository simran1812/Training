package com.sonata;

public class Twolargenumbers {

		public static void main(String[] args) {
			int arr[] = {1,456,367,5,6,278,18};
			
			int max1 = 0;
			
			int max2 = 0;
			for(int i = 1;i<arr.length;i++) {
				int curntnum = arr[i];
				if(curntnum>max1 ) {
					max2 = max1;
					max1 = curntnum;
				}
				else if( max2<curntnum ) {
					max2 = curntnum;
				}
				
			}
			System.out.println(max1);
			System.out.println(max2);
}
}