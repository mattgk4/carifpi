package br.com.ifpi.carifpi.teste;

import br.com.ifpi.carifpi.dao.CarroDao;
import br.com.ifpi.carifpi.modelo.Carro;

public class TestarRemover {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Carro carro = new Carro();
		CarroDao dao = new CarroDao();
		
		carro.setIdcarro(1L);
		dao.remove(carro);
	}

}
