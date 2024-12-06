import java.util.Scanner;

class MaxMin {
   public int n1, n2;

  public MaxMin(int n1, int n2) {
        this.n1 = n1;
        this.n2 = n2;
    }

   public  void print() {
        int result = Math.max(n1, n2);
        System.out.println("Maximum = " + result);
        int result2 = Math.min(n1, n2);
        System.out.println("Minimum = " + result2);
    }
}

public class lab3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the two numbers: ");
        int n1 = scanner.nextInt();
        int n2 = scanner.nextInt();
        MaxMin obj = new MaxMin(n1, n2);
        obj.print();
        scanner.close();
    }
}
