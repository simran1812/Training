package com.sonata.LambdaExpression;

public class LogicClass implements MyOneInterface {
	
	@Override
	public void display() {
		System.out.println("show this my display");
	}
	public static void main(String args[]) {
		LogicClass l1 = new LogicClass();
		l1.display();
	}
	

}
