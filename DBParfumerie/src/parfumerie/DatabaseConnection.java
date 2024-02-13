package parfumerie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	public static final String PostgreSQL_USERNAME = "postgres";
	public static final String PostgreSQL_PASSWORD = "bianca12";
	public static final String PostgreSQL_DATABASE_SERVER = "jdbc:postgresql://localhost:5432/Shop";
	public static final String PostgreSQL_DATABASE_NAME = "Shop";	
	public static final String TABLE_NAME = "parfum";

    public static Connection getConnection() {
        try {
            return DriverManager.getConnection("jdbc:postgresql://localhost:5432/Shop", "postgres", "bianca12");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Nu s-a putut stabili conexiunea la baza de date.");
        }
    }
}

