import java.util.Scanner;

class Sum {
    public int sum, a, b, c;

    Sum(int a, int b, int c) {
        sum = a + b + c;
    }

    void display() {
        System.out.println("The sum is " + sum);
    }
}

public class lab2 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter three number");
        int n1 = scanner.nextInt();
        int n2 = scanner.nextInt();
        int n3 = scanner.nextInt();
        Sum obj = new Sum(n1, n2, n3);
        obj.display();
        scanner.close();

    }
}
