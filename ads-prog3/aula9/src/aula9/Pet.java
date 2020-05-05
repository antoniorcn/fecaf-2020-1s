package aula9;

import java.util.Date;

public class Pet {
	
	private long id;
	private String nome;
	private Date nascimento;
	private String especie;
	private String raca;
	private boolean genero;
	
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
	
	public Date getNascimento() {
		return nascimento;
	}
	public void setNascimento(Date nascimento) {
		this.nascimento = nascimento;
	}
	
	public String getEspecie() {
		return especie;
	}
	public void setEspecie(String especie) {
		this.especie = especie;
	}
	
	public String getRaca() {
		return raca;
	}
	public void setRaca(String raca) {
		this.raca = raca;
	}
	
	public boolean isGenero() {
		return genero;
	}
	public void setGenero(boolean genero) {
		this.genero = genero;
	}
}
