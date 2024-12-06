import java.io.*;

public class SimpleFileWrite {
    public static void main(String[] args) {
        try {
            // Create a FileWriter object for "test.txt"
            FileWriter fw = new FileWriter("test.txt");

            // Write name and roll number directly to the file
            fw.write("Name: John Doe\n");      // Replace with your name
            fw.write("Roll Number: 123456\n"); // Replace with your roll number

            // Close the FileWriter
            fw.close();
            System.out.println("File created and written successfully.");
        } catch (Exception e) {
            System.out.println("An error occurred.");
        }
    }
}
