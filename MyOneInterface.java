package com.sonata.LambdaExpression;
@FunctionalInterface

public interface class MyOneInterface {
	void display();
	default void showOne() {System.out.println("show this"); };
	

}
