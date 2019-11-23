package br.com.ifpi.carifpi.modelo;

import java.util.Calendar;

/**
 * Responsável por criar a classe Carro.
 * 
 * @author Giovanna e Mateus
 *
 */
public class Carro {
	private Long idcarro;
	private String modelo, marca, placa, foto;
	private Double precoVenda;
	private Calendar dataRegistro;
	 
	// Metodos get e set
	public Carro() {};
	public Carro(String modelo, String marca, String placa, String foto, Double precoVenda, Calendar dataRegistro){
		this.modelo = modelo;
		this.marca = marca;
		this.placa = placa;
		this.foto = foto;
		this.precoVenda = precoVenda;
		this.dataRegistro = dataRegistro;
	}
	public Carro(Long id, String modelo, String marca, String placa, String foto, Double precoVenda, Calendar dataRegistro){
		this.idcarro = id;
		this.modelo = modelo;
		this.marca = marca;
		this.placa = placa;
		this.foto = foto;
		this.precoVenda = precoVenda;
		this.dataRegistro = dataRegistro;
	}
	
	public Carro(Long id){
		this.idcarro = id;
		
	}

	public Long getIdcarro() {
		return idcarro;
	}

	public void setIdcarro(Long idcarro) {
		this.idcarro = idcarro;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public double getPrecoVenda() {
		return precoVenda;
	}

	public void setPrecoVenda(double precoVenda) {
		this.precoVenda = precoVenda;
	}

	public Calendar getDataRegistro() {
		return dataRegistro;
	}

	public void setDataRegistro(Calendar dataRegistro) {
		this.dataRegistro = dataRegistro;
	}
	

}
