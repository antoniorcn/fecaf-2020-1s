package edu.curso;

public class Veterinario {
	private long id;
	private String nome;
	private String crv;
	private String especialidade;
	private double precoHora;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getCrv() {
		return crv;
	}
	public void setCrv(String crv) {
		this.crv = crv;
	}
	
	public String getEspecialidade() {
		return especialidade;
	}
	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}
	
	public double getPrecoHora() {
		return precoHora;
	}
	public void setPrecoHora(double precoHora) {
		this.precoHora = precoHora;
	}
}
