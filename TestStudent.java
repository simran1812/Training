package com.sonata.JavaBean;

public class TestStudent {
	public static void main (String args[]) {
		Address a1 = new Address();
		a1.setCity("Rajajinagar");
		a1.setState("KA");
		a1.setPin(560010);
		
		Student s1 = new Student();
		s1.setStdId(4678);
		s1.setStdName("Simran");
		s1.setStdMarks(100);
		s1.setObj(a1);
		System.out.println(s1);
	}
	

}
