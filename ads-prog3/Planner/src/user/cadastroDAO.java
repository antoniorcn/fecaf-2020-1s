package user;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class cadastroDAO {
	private EntityManagerFactory emf;
	
	public cadastroDAO() { 
		emf = Persistence.createEntityManagerFactory("CADASTRO");
	}

	public void adicionar(Cadastro c) throws Exception  { 
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(c);
		em.getTransaction().commit();
		em.close();
	}


}
