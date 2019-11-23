package br.com.ifpi.carifpi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 * Responsável por criar o objeto de conexão com o banco de dados.
 * @author Giovanna e Mateus
 *
 */
public class ConnectionFactory {
	/**
	 * 
	 * @return Objeto de conexão com o banco de dados.
	 * @throws SQLException 
	 * THROWS é lançar o erro para outra classe.
	 */
	public Connection getConnection() { // Connection interface da jdbc;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost/carifpi", "root", "root");
	} catch (SQLException | ClassNotFoundException e) {
		throw new RuntimeException(e);
	}
	}
}	