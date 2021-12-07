package com.sonata;

public class Rectangle extends Shape {
	private double width;
	  private double height;

	  public Rectangle(double width, double height) {
	    
	    super("Rectangle");
	    this.width = width;
	    this.height = height;
	  }
	  public float getArea() {
		    return (float) (width * height);
		  }
}
