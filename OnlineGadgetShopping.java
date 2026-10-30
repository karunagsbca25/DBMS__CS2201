/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package onlinegadgetshopping;

import java.sql.Connection;
import java.sql.DriverManager;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;     
import java.sql.SQLException;
import java.util.Scanner;
import java.sql.*;

public class OnlineGadgetShopping {
  String url ="jdbc:mysql://localhost:3306/gadget_store";
   String USER = "root";
  String PASSWORD = "karunaGS591224";
static Scanner sc = new Scanner(System.in);


    
    public static void main(String[] args) {
         try (Connection con =
                DriverManager.getConnection("jdbc:mysql://localhost:3306/gadget_store","root","karunaGS591224")) {

            System.out.println("ONLINE GADGET SHOPPING SYSTEM");

            while (true) {
                System.out.println("\n1. View Gadgets");
                System.out.println("2. Add Gadget");
                System.out.println("3. Update Gadget");
                System.out.println("4. Delete Gadget");
                System.out.println("5. Search Gadget");
                System.out.println("0. Exit");

                int choice = readInt("Enter choice: ");

                try {
                    switch (choice) {
                        case 1:
                            viewGadgets(con);
                            break;

                        case 2:
                            addGadget(con);
                            break;

                        case 3:
                            updateGadget(con);
                            break;

                        case 4:
                            deleteGadget(con);
                            break;

                        case 5:
                            searchGadget(con);
                            break;

                        case 0:
                            System.out.println("Thank you!");
                            return;

                        default:
                            System.out.println("Invalid choice.");
                    }
                } catch (SQLException e) {
                    System.out.println("Database error: "
                            + e.getMessage());
                }
            }

        } catch (SQLException e) {
            System.out.println("Connection failed: "
                    + e.getMessage());
            System.out.println(
                "Check MySQL, database name, password, "
                + "and Connector/J."
            );
        }
    }

    static void viewGadgets(Connection con)
            throws SQLException {

        String sql = "SELECT * FROM products ORDER BY id";

        try (PreparedStatement ps =
                     con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            System.out.println("\nID | Name | Category | Price | Stock");

            while (rs.next()) {
                System.out.println(
    rs.getInt("id") + " | "
    + rs.getString("name") + " | "
    + rs.getString("category") + " | "
    + rs.getDouble("price") + " | "
    + rs.getInt("stock")
    );
            }
        }
    }

    static void addGadget(Connection con)
            throws SQLException {

        System.out.print("Enter gadget name: ");
        String name = sc.nextLine().trim();

        System.out.print("Enter category: ");
        String category = sc.nextLine().trim();

        double price = readDouble("Enter price: ");
        int stock = readInt("Enter stock: ");

        if (name.isEmpty() || category.isEmpty()
                || price < 0 || stock < 0) {
            System.out.println("Enter valid details.");
            return;
        }

        String sql =
            "INSERT INTO products (name, category, price, stock) "
            + "VALUES (?, ?, ?, ?)";

        try (PreparedStatement ps =
                     con.prepareStatement(sql)) {

            ps.setString(1, name);
            ps.setString(2, category);
            ps.setDouble(3, price);
            ps.setInt(4, stock);

            ps.executeUpdate();
            System.out.println("Gadget added successfully.");
        }
    }

    static void updateGadget(Connection con)
            throws SQLException {
        viewGadgets(con); 
         String sql2 = "SELECT id, name FROM products";
          Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql2);

while (rs.next()) {
    System.out.println("Product ID: " + rs.getInt("id")
            + " | Product Name: " + rs.getString("name"));
}
          
        int id = readInt("Enter gadget ID to update: ");

        double price = readDouble("Enter new price: ");
        int stock = readInt("Enter new stock: ");

        if (price < 0 || stock < 0) {
            System.out.println("Price and stock cannot be negative.");
            return;
        }
    

        String sql = "UPDATE products SET price = ?, stock = ? WHERE id = ?";

        try (PreparedStatement ps =
                     con.prepareStatement(sql)) {

            ps.setDouble(1, price);
            ps.setInt(2, stock);
            ps.setInt(3, id);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                System.out.println("Gadget updated successfully.");
            } else {
                System.out.println("Gadget ID not found.");
            }
        }
    }
    static void deleteGadget(Connection con)
            throws SQLException {
            String sql3 = "SELECT id, name FROM products";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql3);

while (rs.next()) {
    System.out.println("Product ID: " + rs.getInt("id")
            + " | Product Name: " + rs.getString("name"));
}
        int id = readInt("Enter gadget ID to delete: ");

        String sql = "DELETE FROM products WHERE id = ?";

        try (PreparedStatement ps =
                     con.prepareStatement(sql)) {

            ps.setInt(1, id);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                System.out.println("Gadget deleted successfully.");
            } else {
                System.out.println("Gadget ID not found.");
            }
        }
    }
    static void searchGadget(Connection con)
            throws SQLException {

        int id = readInt("Enter gadget ID to search(1-25): ");

        String sql = "SELECT * FROM products WHERE id = ?";

        try (PreparedStatement ps =
                     con.prepareStatement(sql)) {

            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {
                   System.out.println(
    rs.getInt("id") + " | "
    + rs.getString("name") + " | "
    + rs.getString("category") + " | "
    + rs.getDouble("price") + " | "
    + rs.getInt("stock")
);
                } else {
                    System.out.println("Gadget not found.");
                }
            }
        }
    }

    static int readInt(String message) {
        while (true) {
            System.out.print(message);

            try {
                return Integer.parseInt(sc.nextLine().trim());
            } catch (NumberFormatException e) {
                System.out.println("Enter a whole number.");
            }
        }
    }

    static double readDouble(String message) {
        while (true) {
            System.out.print(message);

            try {
                return Double.parseDouble(sc.nextLine().trim());
            } catch (NumberFormatException e) {
                System.out.println("Enter a valid number.");
            }
        }
    }
    }
    

