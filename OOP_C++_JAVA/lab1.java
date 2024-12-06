import java.util.Scanner;

class Triangle {
    public double height;
    public double width;

    Triangle(double height, double width) {
        this.height = height;
        this.width = width;
    }

   public void  area() {
        double result = 0.5*height*width;
        System.out.println("Area oth the Triangle : "+result);

    }

}

public class lab1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter the Height and width: ");
        double h = input.nextDouble();
        double w = input.nextDouble();
        Triangle T = new Triangle(h, w);
         T.area();
    
        input.close();
    }
}
