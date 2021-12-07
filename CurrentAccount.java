package com.sonata.InterfaceExamples;
import com.sonata.ExceptionExample.MyOwnException;
import com.sonata.JavaBean.Bank;
public class CurrentAccount extends com.sonata.JavaBean.Bank implements BankInterface{

	@Override
	public double withDraw(double amount) throws MyOwnException {
		if(amount<getAccBalance()&& getAccBalance()>=500) {
			System.out.println("Withdrawed");
			double w1=super.getAccBalance()-amount;
			
			setAccBalance(w1);
		}else if(amount>getAccBalance()) {
			throw new MyOwnException("Insufficient balance");
			
		}else {
			throw new MyOwnException("maintain balance min of Rs 500");
		}
		return amount;
		
		 
		 
		
	}

	

	@Override
	public double deposite(double amount) {
		double d1=super.getAccBalance()+amount;
		 return d1;
		
	}
	public static void main(String [] args) {
		 CurrentAccount c1= new CurrentAccount();
		 c1.setAccNo(123);
		 c1.setAccName("SBI");
		 c1.setAccBalance(4000);
		 try {
			c1.withDraw(4000);
		} catch (MyOwnException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 System.out.println(c1.deposite(0));
		
	 }
	

}