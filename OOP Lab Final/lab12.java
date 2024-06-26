import java.util.Scanner;

class Person {
    public String name;
    public int age;

    public void display1() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
    }
}

class Student extends Person {
    public double salary;

    public void display2() {
        System.out.println("Salary: " + salary);
        display1();
    }
}

public class lab12 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter name: ");
        String name = scanner.nextLine();

        System.out.print("Enter age: ");
        int age = scanner.nextInt();

        System.out.print("Enter salary: ");
        double salary = scanner.nextDouble();

        Student s1 = new Student();
        s1.name = name;
        s1.age = age;
        s1.salary = salary;

        s1.display2();

        scanner.close();
    }
}
