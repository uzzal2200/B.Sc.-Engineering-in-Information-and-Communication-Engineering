import javax.swing.*;
import java.awt.*;

public class SimpleShapes extends JPanel {

    public void paint(Graphics g) {
        g.drawOval(50, 50, 100, 100); 
        g.drawOval(200, 50, 150, 100);
    }

    public static void main(String[] args) {
       
        JFrame frame = new JFrame("Simple Shapes");
        frame.add(new SimpleShapes());
        frame.setSize(400, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
    }
}