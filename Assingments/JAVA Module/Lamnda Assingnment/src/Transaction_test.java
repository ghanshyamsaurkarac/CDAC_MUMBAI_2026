import java.time.LocalDate;
import java.util.Scanner;



public class Transaction_test {

	public static void main(String[] args) {
		
		

	}

}

class Transaction{
	int txId;
	LocalDate txDate;
	float txAmount;
	boolean txStatus;
	boolean txArrears;
	
	public Transaction(int txId,LocalDate txDate,float txAmount,boolean txStatus,boolean txArrears) {
		this.txId=txId;
		this.txDate=txDate;
		this.txAmount=txAmount;
		this.txStatus=txStatus;
		this.txArrears=txArrears;
	}
	
	public String toString() {
		return "["+txId + " " + txDate + " " + txAmount + " "
                + txStatus + " " + txArrears+"]";
	}
	
}