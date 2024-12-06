import java.awt.*;
import java.awt.event.*;

public class step_in_event_program {
    public static void main(String[] args) {
        Frame frame = new Frame("Event Handling Example");
        Button button = new Button("Click Me");
        
        button.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                System.out.println("Button Clicked!");
            }
        });
        
        frame.add(button);
        frame.setSize(200, 200);
        frame.setLayout(new FlowLayout());
        frame.setVisible(true);
        
        frame.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                frame.dispose();
            }
        });
    }
}
