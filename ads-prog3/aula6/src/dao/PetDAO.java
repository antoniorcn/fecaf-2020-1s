package dao;

import java.util.List;

import model.Pet;

public interface PetDAO {
	
	public void adicionar(Pet p);
	public List<Pet> pesquisarPorNome(String nome);

}
