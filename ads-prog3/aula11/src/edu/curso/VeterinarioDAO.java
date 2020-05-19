package edu.curso;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

public class VeterinarioDAO {
	private EntityManagerFactory emf;
	
	public VeterinarioDAO() { 
		emf = Persistence.createEntityManagerFactory("PETS");
	}

	public void adicionar(Veterinario v) throws Exception  { 
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(v);
		em.getTransaction().commit();
		em.close();
	}
	
	public List<Veterinario> pesquisarPorNome(String nome) { 
		EntityManager em = emf.createEntityManager();
		String sql = "select v from Veterinario v where nome like :nome";
		TypedQuery<Veterinario> qry = em.createQuery(sql, Veterinario.class);
		qry.setParameter("nome", "%" + nome + "%");
		List<Veterinario> lista = qry.getResultList();
		em.close();
		return lista;
	}
}
