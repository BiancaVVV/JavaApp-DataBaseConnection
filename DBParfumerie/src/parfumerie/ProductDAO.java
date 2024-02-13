package parfumerie;

import java.sql.*;

public class ProductDAO {
    private static final String INSERT_PRODUCT = "INSERT INTO parfum (cod, idcategorie,denumire,id_producator) VALUES (?, ?,?,?)";
    private static final String SELECT_PRODUCTS = "SELECT * FROM parfum WHERE denumire LIKE ? AND idcategorie = ?";

    public void insertProduct(double cod,double idcategorie,String denumire, double id_producator) {
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT)) {
            preparedStatement.setDouble(1,cod );
            preparedStatement.setDouble(2,idcategorie);
            preparedStatement.setString(3, denumire);
            preparedStatement.setDouble(4,id_producator );
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




    public void searchProducts(String denumire, double idcategorie) {
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCTS)) {
            preparedStatement.setString(1, "%" + denumire + "%");
            preparedStatement.setDouble(2, idcategorie);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                double cod = resultSet.getDouble("cod");
                String denumire1 = resultSet.getString("denumire");
                double categorie = resultSet.getDouble("idcategorie");

                System.out.println("COD: " + cod + ", Nume: " + denumire1 + ", Categorie: " + categorie);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();

        // Exemplu de inserare in baza de date
        productDAO.insertProduct(9998,1331,"Sauvage",8885);
        
        
        // Exemplu de căutare in baza de date
        productDAO.searchProducts("Coco Mademoiselle",1334);
    }
}

