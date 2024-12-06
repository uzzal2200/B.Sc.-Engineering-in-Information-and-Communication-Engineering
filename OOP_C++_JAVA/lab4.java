import java.util.Arrays;
import java.util.Scanner;

class Sort_Numbers {

    public int[] numbers;
    public int n;

    Sort_Numbers(int[] numbers) {
        this.numbers = numbers;
        this.n = numbers.length;
    }

    void print() {
        Arrays.sort(numbers);

        System.out.print("Numbers sorted in ascending order:");
        for (int num : numbers) {
            System.out.print(" " + num);
        }
        System.out.println();

        System.out.print("Numbers sorted in descending order:");
        for (int i = n - 1; i >= 0; i--) {
            System.out.print(" " + numbers[i]);
        }
        System.out.println();
    }
}

public class lab4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("How many numbers to sort: ");
        int n = scanner.nextInt();

        int[] numbers = new int[n];
        System.out.print("Enter the numbers: ");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        scanner.close();

        Sort_Numbers obj = new Sort_Numbers(numbers);
        obj.print();
    }
}
