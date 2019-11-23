package br.com.ifpi.carifpi.teste;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.ifpi.carifpi.dao.CarroDao;
import br.com.ifpi.carifpi.modelo.Carro;

public class TestarAlterar {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Carro carro = new Carro();
		CarroDao dao = new CarroDao();
		
		carro = dao.FindById(1L);
		carro.setModelo("Hilux");
		dao.altera(carro);
	}

}
