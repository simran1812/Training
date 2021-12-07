package com.sonata.AnnotationExample;

class A{
	public void showMyData() {
		System.out.println("super class a");
	}
}
class B extends A {
	@Deprecated
	public void show() {
		System.out.println("My show method");
	}
	@Override
	@SuppressWarnings("unchecked")
	public void showMyData() {
		System.out.println("super class b");
		
	}
}
public class MarkerAnnotationExample {
	public static void main(String args[]) {
		B x= new B();
		x.showMyData();
		x.show();
	}

}
