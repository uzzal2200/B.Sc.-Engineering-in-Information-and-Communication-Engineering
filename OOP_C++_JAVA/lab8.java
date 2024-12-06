import java.util.Scanner;

class Volume {
    public double volumeSphere(double radius) {
        return (4.0 / 3.0) * Math.PI * Math.pow(radius, 3);
    }

    public double volumeCube(double side) {
        return Math.pow(side, 3);
    }

    public double volumeCylinder(double radius, double height) {
        return Math.PI * Math.pow(radius, 2) * height;
    }
}
public class lab8 {
    public static void main(String[] args) {
        Volume cal = new Volume();
        Scanner sc = new Scanner(System.in);
        double radius, side, height;

        System.out.print("Enter the radius of the sphere: ");
        radius = sc.nextDouble();
        System.out.println("Volume of the sphere: " + cal.volumeSphere(radius));

        System.out.print("Enter the side length of the cube: ");
        side = sc.nextDouble();
        System.out.println("Volume of the cube: " + cal.volumeCube(side));

        System.out.print("Enter the height of the cylinder: ");
        height = sc.nextDouble();
        System.out.println("Volume of the cylinder: " + cal.volumeCylinder(radius, height));
        sc.close();
    }
}
