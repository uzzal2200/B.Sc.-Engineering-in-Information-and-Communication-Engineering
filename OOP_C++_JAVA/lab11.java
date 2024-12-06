import java.util.Scanner;

class BankAccount {
    public String name;
    public double primary_balance;

    public BankAccount(String name, double primary_balance) {
        this.name = name;
        this.primary_balance = primary_balance;
    }

    public void account_information() {
        System.out.println("......Account Information......");
        System.out.println("Owner's Name: " + name);
        System.out.println("Primary Balance $: " + primary_balance);
    }

    public void withdraw(double amount) {
        if (amount > primary_balance) {
            System.out.println("Insufficient funds!");
        } else {
            primary_balance -= amount;
            System.out.println("Withdrawal of $" + amount + " successful.");
        }
    }

    public void update_information() {
        System.out.println("......Updated Account Information......");
        System.out.println("Owner's Name: " + name);
        System.out.println("Extra Balance: $" + primary_balance);
    }
}
public class lab11 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter account owner's name: ");
        String name = scanner.nextLine();

        System.out.print("Enter primary balance: ");
        double primary_balance = scanner.nextDouble();

        BankAccount obj = new BankAccount(name, primary_balance);
        obj.account_information();

        System.out.print("Enter amount to withdraw: ");
        double amount = scanner.nextDouble();

        obj.withdraw(amount);
        obj.update_information();

        scanner.close();
    }
}
