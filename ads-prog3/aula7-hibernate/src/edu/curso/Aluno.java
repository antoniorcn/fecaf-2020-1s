package edu.curso;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Aluno {
	
	private String ra;
	private String nome;
	private Date nascimento;
	
	@Id
	public String getRa() {
		return ra;
	}
	public void setRa(String ra) {
		this.ra = ra;
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
}
