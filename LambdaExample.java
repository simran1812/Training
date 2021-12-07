package com.sonata.LambdaExpression;
@FunctionalInterface
interface simple{
	void sum(int a);
}

public class LambdaExample {
	public static void main(String[] args) {
		//Syntax of lambda is () -> {body}
		simple s1 = (int a)->{System.out.println("Welcome to Lambda" + a);};
		s1.sum(10);
		
		MyOneInterface x1 = ()-> {System.out.println("My functional interface");};
		x1.display();
		x1.showOne();
	}
}
}