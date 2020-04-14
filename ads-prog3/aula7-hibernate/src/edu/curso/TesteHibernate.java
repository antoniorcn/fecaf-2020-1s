package edu.curso;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class TesteHibernate {
	private EntityManagerFactory emf;
	public TesteHibernate() { 
		emf = Persistence.createEntityManagerFactory("ALUNOS");
	}
	
	public void inserir() { 
		Aluno a1 = new Aluno();
		a1.setRa("11111");
		a1.setNome("Antonio Rodrigues");
		a1.setNascimento(new Date());
		
		Aluno a2 = new Aluno();
		a2.setRa("22222");
		a2.setNome("Maria Silva");
		a2.setNascimento(new Date());
		
		
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(a1);
		em.persist(a2);
		em.getTransaction().commit();
		em.close();
		System.out.println("Alunos criados");
	}
	
	public void pesquisar(String nome) { 
		EntityManager em = emf.createEntityManager();
		
		TypedQuery<Aluno> qry = em.createQuery("select a from Aluno a where nome like :pesquisa", 
				Aluno.class);
		qry.setParameter("pesquisa", "%" + nome + "%");
		List<Aluno> alunos = qry.getResultList();
		for (Aluno a : alunos) { 
			System.out.printf("RA: %s   Nome: %s \n", a.getRa(), a.getNome());
		}
		
		em.close();
	}
	
	public void atualizar() { 
		EntityManager em = emf.createEntityManager();
		
		Aluno a = em.find(Aluno.class, "22222");
		
		em.getTransaction().begin();
	
		a.setNome("Maria Silva da Penha");
		
		em.getTransaction().commit();
		em.close();
		System.out.println("Alunos criados");
	}
	
	public void criarCursos() { 
		Curso c1 = new Curso();
		c1.setCod("MAT");
		c1.setId(1l);
		c1.setNome("Matematica");
		
		Curso c2 = new Curso();
		c2.setCod("PROG3");
		c2.setId(2l);
		c2.setNome("Programação III");
		
		EntityManager em = emf.createEntityManager();
		Aluno a1 = em.find(Aluno.class, "11111");
		Aluno a2 = em.find(Aluno.class, "22222");
		
		c1.getAlunos().add(a1);
		c1.getAlunos().add(a2);
		c2.getAlunos().add(a2);
		
		em.getTransaction().begin();
		em.persist(c1);
		em.persist(c2);
		em.getTransaction().commit();
		em.close();
	}
	
	public void close() { 
		emf.close();
	}

	public static void main(String[] args) {
		TesteHibernate t = new TesteHibernate();
		t.criarCursos();
		t.close();
	}

}
