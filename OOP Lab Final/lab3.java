import java.util.Scanner;

class Max_Min {
    public int n1;
    public int n2;

    Max_Min(int n1, int n2) {
        this.n1 = n1;
        this.n2 = n2;
    }

    void print() {
        if (n1 > n2) {
            System.out.println("Maximum = " + n1);
            System.out.println("Minimum = " + n2);
        } else if (n2 > n1) {
            System.out.println("Maximum = " + n2);
            System.out.println("Minimum = " + n1);
        }

    }
}

public class lab3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the two numbers : ");
        int n1 = scanner.nextInt();
        int n2 = scanner.nextInt();
        Max_Min obj = new Max_Min(n1, n2);
        obj.print();
        scanner.close();
    }
}
