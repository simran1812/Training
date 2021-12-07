package com.sonata.AnnotationExample;
 
class ShowOne {
	public void Show() {
		System.out.println("it is my showOne");
	}

}
class ShowTwo extends ShowOne {
	@Override
	public void Show() {
		super.Show();
		System.out.println("it is my showTwo");
	}
}
public class MyAnnotation {
	public static void main(String args[]) {
		ShowTwo s1 = new ShowTwo();
		s1.Show();
	}
}
