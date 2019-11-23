package br.com.ifpi.carifpi.teste;

import java.util.Calendar;

import br.com.ifpi.carifpi.dao.CarroDao;
import br.com.ifpi.carifpi.modelo.Carro;

public class TesteInsere {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Carro railuks = new Carro(); Calendar c = Calendar.getInstance();
		 c.set(2019, Calendar.MARCH, 22);
		 railuks.setModelo("Hlux"); 
		 railuks.setMarca("Toyota");
		 railuks.setPlaca("RTY-0864"); 
		 railuks.setFoto("https://images.immedia.com.br//hilux.png");
		 railuks.setPrecoVenda(110000.00); railuks.setDataRegistro(c);

		Carro gol = new Carro();
		gol.setModelo("Gol");
		gol.setMarca("Volkswagen");
		gol.setPlaca("PIN-3452");
		gol.setFoto("https://images.immedia.com.br//gol.png");
		gol.setPrecoVenda(41000.00);
		gol.setDataRegistro(Calendar.getInstance());
		CarroDao dao = new CarroDao();

		dao.adiciona(railuks);
		dao.adiciona(gol);
		System.out.println("Gravado!");
	}

}
