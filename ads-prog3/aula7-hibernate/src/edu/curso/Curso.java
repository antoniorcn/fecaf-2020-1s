package edu.curso;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Curso {
	
	@Id
	private long id;
	private String cod;
	private String nome;
	
	@ManyToMany
	private List<Aluno> alunos = new ArrayList<>();

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public String getCod() {
		return cod;
	}
	public void setCod(String cod) {
		this.cod = cod;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Aluno> getAlunos() {
		return alunos;
	}
	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}
}
