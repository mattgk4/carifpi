package br.com.ifpi.carifpi.teste;

import java.text.SimpleDateFormat;
import java.util.List;

import br.com.ifpi.carifpi.dao.CarroDao;
import br.com.ifpi.carifpi.modelo.Carro;

public class TestaLista {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CarroDao dao = new CarroDao();
		
		List<Carro> carros = dao.getLista();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		for(Carro carro: carros){
			System.out.println("ID: "+carro.getIdcarro());
			System.out.println("MODELO: "+carro.getModelo());
			System.out.println("MARCA: "+carro.getMarca());
			System.out.println("PLACA: "+carro.getPlaca());
			System.out.printf("PREÇO: R$ %5.2f\n",carro.getPrecoVenda());
			System.out.println("DATA DE REGISTRO: "+sdf.format(carro.getDataRegistro().getTime())+"\n");
			
		}
		
		

	}

}
