package com.sonata.InterfaceExamples;

public interface BankInterface {
	int abc = 30;
	public double withDraw(double amount);
	public double deposite(double amount);
	
	static void anotherNewMethod() {
		System.out.println("Newly added static method");
	}

}
