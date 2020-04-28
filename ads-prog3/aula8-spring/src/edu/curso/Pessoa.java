package edu.curso;

public class Pessoa {
	private long id;
	private String nome;
	
	public void falar() { 
		System.out.println("Pessoa " + nome + " está falando");
	}

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
}
