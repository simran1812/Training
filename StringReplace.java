package com.sonata;

public class StringReplace {
	public static void main(String args[]) {
		String str = "Hello, My name is Simran Jain";
		char ch[]=str.toCharArray();
		for(int i=0; i<ch.length; i++) {
			System.out.println(ch[i]);
		}
		
		for(int i=0; i<ch.length; i++) {
			if(ch[i]=='a'||ch[i]=='A'||ch[i]=='e'||ch[i]=='E'||ch[i]=='i'||ch[i]=='I'||ch[i]=='o'||ch[i]=='O'||ch[i]=='u'||ch[i]=='U')
		{
				ch[i]='$';
		}
			
		}
		for(int i=0; i<ch.length; i++) {
			System.out.println(ch[i]);
		}
	}


}
