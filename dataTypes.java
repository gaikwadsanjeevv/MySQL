package com.sanjeevgaikwad.CodePractice;

import java.util.Date;
import java.awt.Point;

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

       Point point1 = new Point(10, 20); // Correct capitalization
       Point point2 = point1;
       System.out.println(point1.x + " " + point1.y);
       System.out.println(point2.x + " " + point2.y);
       point1.y = 25;
       System.out.println(point1.x + " " + point1.y);
       System.out.println(point2.x + " " + point2.y);
   }
}
