import java.util.Scanner;

class StringAdd {
    public String s1, s2;

    public void setString() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter string s1");
        s1 = sc.nextLine();
        System.out.println("Enter string s2");
        s2 = sc.nextLine();
        String s3 = s1 + s2;
        System.out.println("Add two strings = " + s3);
        sc.close();
    }

}

public class lab6 {
    public static void main(String[] args) {
        StringAdd obj = new StringAdd();
        obj.setString();
    }

}
