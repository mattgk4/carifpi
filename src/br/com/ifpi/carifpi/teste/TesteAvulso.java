package br.com.ifpi.carifpi.teste;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import br.com.ifpi.carifpi.dao.ConnectionFactory;
import br.com.ifpi.carifpi.modelo.Carro;

public class TesteAvulso {

	public static void main(String[] args) {
		/*
		 * Calendar c = Calendar.getInstance();
		 * System.out.println("Data e Hora atual: "+c.getTime());
		 * 
		 * 
		 * c.set(2019, 03, 22);
		 * 
		 * System.out.println("Data/Hora atual: "+c.getTime());
		 * System.out.println("Ano: "+c.get(Calendar.YEAR));
		 * System.out.println("Mês: "+c.get(Calendar.MONTH));
		 * System.out.println("Dia do Mês: "+c.get(Calendar.DAY_OF_MONTH));
		 
		try {
			ConnectionFactory connection = new ConnectionFactory();
			PreparedStatement stmt = connection.getConnection().prepareStatement("select *from carro");
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
				System.out.println(rs.getString("modelo"));

			}
		} catch (SQLException e) {

		}
		*/
		
		Double num1 = new Double("3,4");

	}

}
