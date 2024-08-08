import java.util.Date;

class Point3D {
    public int x;
    public int y;
    public int z;

    public Point3D(int x, int y, int z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
}

public class Main {

    public static void main(String[] args) {
        // Primitive data types
        byte age = 23;
        long viewCounts = 1_121_345_678;
        float price = 234.56f;
        char gender = 'M';
        boolean isValid = true;
        System.out.println(age);
        System.out.println(viewCounts);
        System.out.println(gender);
        System.out.println(price);
        System.out.println(isValid);

        // Non-Primitive data types
        String name = "Sanjeev Gaikwad";
        System.out.println(name);
        Date now = new Date();
        System.out.println(now);

        // Using Point3D class
        Point3D point1 = new Point3D(10, 20, 30);
        Point3D point2 = point1;
        System.out.println(point1.x + " " + point1.y + " " + point1.z);
        System.out.println(point2.x + " " + point2.y + " " + point2.z);
        point1.z = 35;
        System.out.println(point1.x + " " + point1.y + " " + point1.z);
        System.out.println(point2.x + " " + point2.y + " " + point2.z);
    }
}

