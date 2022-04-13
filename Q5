public class Account {
		  private AccountHolder holder;
		  private double balance;

		  public Account(AccountHolder holder, double amt) {
		    this.holder = holder;
		    balance = amt;
		  }

		  public void deposit(double amt) {
		    balance += amt;
		  }

		  public void withdraw(double amt) {
		    balance -= amt;
		  }

		  public double getBalance() {
		    return balance;
		  }

		  public AccountHolder getHolder() {
		    return holder;
		  }

		  public void setBalance(double amt) {
		    balance = amt;
		  }

		  public void setHolder(AccountHolder holder) {
		    this.holder = holder;
		  }
	}
	public class AccountHolder {
		  protected int ID;
		  protected String address;

		  public AccountHolder(int ID, String address) {
		    this.ID = ID;
		    this.address = address;
		  }
		  
		  public static int getNextID() {
		    int max = 1000000;
		    int nextID = (int)(Math.random() * max + 1);
		    return nextID;
		  }
	}
	public class CorporateHolder extends AccountHolder{
		  private String contact;

		  public CorporateHolder(int ID, String address, String contact) {
		    super(ID, address);
		    this.contact = contact;
		  }

		  public String getContact() {
		    return contact;
		  }

		  public void setContact(String contact) {
		    this.contact = contact;
		  }
	}
	public class IndividualHolder extends AccountHolder implements Util {
		  private String name;
		  private String SSN;

		  public IndividualHolder(int ID, String address, String name, String SSN) {
		    super(ID, address);
		    this.name = name;
		    this.SSN = SSN;
		  }

		  public String getName() {
		    return name;
		  }

		  public String getSSN() {
		    return SSN;
		  }

		  public void setName(String name) {
		    this.name = name;
		  }

		  public void setSSN(String SSN) {
		    this.SSN = SSN;
		  }

		  public String convertNameUpperCase(String name) {
		    return name.toUpperCase();
		  }
	}
	public interface Util {
		  public String convertNameUpperCase(String name);
	}
