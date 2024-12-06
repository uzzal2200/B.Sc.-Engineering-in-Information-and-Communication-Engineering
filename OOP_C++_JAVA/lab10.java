import java.util.Scanner;

class GPA {
    public void GPA_calculate() {
        int eng, che, com, phy, math;
        float total, average, percentage;

        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter marks for English, Chemistry, Computer, Physics, Math:");
        eng = scanner.nextInt();
        che = scanner.nextInt();
        com = scanner.nextInt();
        phy = scanner.nextInt();
        math = scanner.nextInt();

        total = eng + com + phy + math + che;
        average = total / 5;
        percentage = (total / 500) * 100;

        System.out.println("Total marks = " + total);
        System.out.println("Average marks = " + average);
        System.out.println("Percentage = " + percentage + "%");

        if (average >= 80 && average <= 100)
            System.out.println("GPA = 5.00");
        else if (average < 80 && average >= 70)
            System.out.println("GPA = 4.00");
        else if (average < 70 && average >= 60)
            System.out.println("GPA = 3.50");
        else if (average < 60 && average >= 50)
            System.out.println("GPA = 3.00");
        else if (average < 50 && average >= 40)
            System.out.println("GPA = 2.50");
        else if (average < 40 && average >= 33)
            System.out.println("GPA = 2.00");
        else
            System.out.println("GPA = 0.00");

        scanner.close();
    }
}
public class lab10 {
    public static void main(String[] args) {
        GPA obj = new GPA();
        obj.GPA_calculate();
    }
    
}
