package com.sonata.InterfaceExamples;

public class SavingAccount extends Bank implements BankInterface{
 @Override
 public double withDraw(double amount) {
	 double x=super.Balance-amount;
	 return x;
 }
 @Override
 public double deposite(double amount) {
	 double y=super.Balance+amount;
	 return y;
 }
 public static void main(String [] args) {
	 SavingAccount s1= new SavingAccount();
	 s1.AccId=345;
	 s1.AccName="SBI";
	 s1.Balance=10000;
	 s1.display();
	 System.out.println(s1.deposite(1000));
 }
 
}