import java.util.Scanner;

public class lab9 {
    public static int factorial(int n) {
        if (n == 0 || n == 1)
            return 1;
        else
            return n * factorial(n - 1);
    }

    public static int binomialCoefficient(int n, int r) {
        return factorial(n) / (factorial(r) * factorial(n - r));
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number: ");
        int n = sc.nextInt();

        for (int i = 0; i < n; i++) {
            for (int k = 0; k < n - i - 1; k++) {
                System.out.print("  ");
            }
            for (int j = 0; j <= i; j++) {
                System.out.printf("%4d", binomialCoefficient(i, j));
            }
            System.out.println();
        }
        sc.close();
    }
}
