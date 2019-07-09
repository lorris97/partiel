package com.ensup.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author David
 *
 */
public class ConnectionDao {

	public static Connection cn;
	public static Statement st;

	public Connection connection() throws SQLException { // connexion a la bdd
		 String url = "jdbc:mysql://localhost/projetfilrouge";
		String login = "root";
		String passwd = "";
        try {
           // Etape 1 : Chargement du driver
			Class.forName("com.mysql.jdbc.Driver");

			// Etape 2 : récupération de la connexion
			cn = DriverManager.getConnection(url, login, passwd);

			// Etape 3 : Création d'un statement
			st = cn.createStatement();

			System.out.println("Connecté.");
            
        } catch (ClassNotFoundException e) {

            System.out.println("Connextion avec la base de données impossible");
        }
        return cn;
	}

	public void deconnection() {
		try {
//			cnx.close();
//			stat.close();
		} catch (Exception e) {
			System.err.println("Got an exception! ");
			System.err.println(e.getMessage());
		}

	}
}
