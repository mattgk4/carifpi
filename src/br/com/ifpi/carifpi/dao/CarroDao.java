package br.com.ifpi.carifpi.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.ifpi.carifpi.modelo.Carro;

public class CarroDao {

	private Connection connection;

	public CarroDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	public void adiciona(Carro carro) {
		String sql = "insert into carro " + "(modelo,marca,placa,foto,preco_ven,data_registro)"
				+ " values (?,?,?,?,?,?)";

		try {

			// prepared statement para inserção

			PreparedStatement stmt = connection.prepareStatement(sql);
			// seta os valores

			stmt.setString(1, carro.getModelo());
			stmt.setString(2, carro.getMarca());
			stmt.setString(3, carro.getPlaca());
			stmt.setString(4, carro.getFoto());
			stmt.setDouble(5, carro.getPrecoVenda());
			stmt.setDate(6, new Date(carro.getDataRegistro().getTimeInMillis()));

			// executa

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		}

	}

	public List<Carro> getLista() {
		try {
			List<Carro> carros = new ArrayList<Carro>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM carro");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Carro c = new Carro();
				c.setIdcarro(rs.getLong("idcarro"));
				c.setModelo(rs.getString("modelo"));
				c.setMarca(rs.getString("marca"));
				c.setPlaca(rs.getString("placa"));
				c.setPrecoVenda(rs.getDouble("preco_ven"));
				c.setFoto(rs.getString("foto"));

				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("data_registro"));
				c.setDataRegistro(data);

				carros.add(c);
			}

			rs.close();
			stmt.close();
			return carros;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void altera(Carro carro) {
		String sql = "UPDATE carro SET modelo=?, marca=?, placa=?, preco_ven=?,foto=?, data_registro=? where idcarro=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, carro.getModelo());
			stmt.setString(2, carro.getMarca());
			stmt.setString(3, carro.getPlaca());
			stmt.setDouble(4, carro.getPrecoVenda());
			stmt.setString(5, carro.getFoto());
			stmt.setDate(6, new Date(carro.getDataRegistro().getTimeInMillis()));
			stmt.setLong(7, carro.getIdcarro());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Carro carro) {
		try {
			PreparedStatement stmt = connection.prepareStatement("delete from carro where idcarro=?");

			stmt.setLong(1, carro.getIdcarro());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public Carro FindById(Long id) {
		try {
			PreparedStatement stmt = connection.prepareStatement("select * from carro where idcarro=?");
			stmt.setLong(1, id);
			ResultSet rs = stmt.executeQuery();

			rs.next();

			Carro c = new Carro();
			c.setIdcarro(rs.getLong("idcarro"));
			c.setModelo(rs.getString("modelo"));
			c.setMarca(rs.getString("marca"));
			c.setPlaca(rs.getString("placa"));
			c.setPrecoVenda(rs.getDouble("preco_ven"));
			c.setFoto(rs.getString("foto"));

			Calendar data = Calendar.getInstance();
			data.setTime(rs.getDate("data_registro"));
			c.setDataRegistro(data);

			rs.close();
			stmt.close();
			return c;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
