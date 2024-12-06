import java.util.Scanner;

class Matrix {
    public int r;
    public int c;
    public int[][] m1 = new int[100][100];
    public int[][] m2 = new int[100][100];
    public int[][] add = new int[100][100];

    public void setMatrix() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter row and column: ");
        r = sc.nextInt();
        c = sc.nextInt();

        System.out.println("Enter matrix m1:");
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                m1[i][j] = sc.nextInt();
            }
        }

        System.out.println("Enter matrix m2:");
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                m2[i][j] = sc.nextInt();
            }
        }

        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                add[i][j] = m1[i][j] + m2[i][j];
            }
        }

        System.out.println("Addition of two matrices:");
        for (int i = 0; i < r; i++) {
            for (int j = 0; j < c; j++) {
                System.out.print(add[i][j] + " ");
            }
            System.out.println();
        }
        sc.close();
    }
}

public class lab5 {
    public static void main(String[] args) {
        Matrix obj = new Matrix();
        obj.setMatrix();
    }

}
