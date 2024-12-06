import java.util.Scanner;

class Students {
    public int roll;
    public String name;
    public String section;

    public void details() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter name of the student: ");
        name = sc.nextLine();
        System.out.print("Enter section of the student: ");
        section = sc.nextLine();
        System.out.print("Enter roll of the student: ");
        roll = sc.nextInt();
        sc.close();
    }

    public void getDetails() {
        System.out.println("Information of the student");
        System.out.println("Name = " + name);
        System.out.println("Section = " + section);
        System.out.println("Roll = " + roll);
    }
}
public class lab7 {
    public static void main(String[] args) {
        Students student = new Students();
        student.details();
        student.getDetails();
    }
    
}
