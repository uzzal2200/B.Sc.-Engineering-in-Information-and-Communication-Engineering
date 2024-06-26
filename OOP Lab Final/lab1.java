import java.util.Scanner;

class Triangle {
    public double height;
    public double width;

    Triangle(double height, double width) {
        this.height = height;
        this.width = width;
    }

    double area() {
        return .5 * height * width;
    }

}

public class lab1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter the Height and width: ");
        double h = input.nextDouble();
        double w = input.nextDouble();
        Triangle T = new Triangle(h, w);
        double area = T.area();
        System.out.println("This area of the Triangle is: " + area);
        input.close();
    }
}
