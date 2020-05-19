package edu.curso;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Veterinario {
	private long id;
	private String nome;
	private String crv;
	private String especialidade;
	private double precoHora;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Column(length = 100)
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Column(length = 10, unique = true, nullable = false)
	public String getCrv() {
		return crv;
	}
	public void setCrv(String crv) {
		this.crv = crv;
	}
	
	@Column(length = 20)
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
