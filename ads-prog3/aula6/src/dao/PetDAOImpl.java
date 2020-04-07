package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Pet;

public class PetDAOImpl implements PetDAO{
	private String DBCLASS = "org.mariadb.jdbc.Driver";
	private String DBURL = "jdbc:mariadb://localhost:3306/pets";
	private String DBUSER = "root";
	private String DBPASS = "";
	private Connection con;
	
	public PetDAOImpl() { 
		try {
			Class.forName(DBCLASS);
			con = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void adicionar(Pet p) { 
		String sql = "INSERT INTO pet (nome, tipo, raca, peso, nascimento) "
				+ "VALUES (?, ?, ?, ?, ?)";
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, p.getNome());
			stmt.setString(2,  p.getTipo());
			stmt.setString(3,  p.getRaca());
			stmt.setDouble(4,  p.getPeso());
			stmt.setDate(5,  new java.sql.Date(p.getNascimento().getTime()));
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Pet> pesquisarPorNome(String nome) {
		List<Pet> pets = new ArrayList<>();
		String sql = "SELECT * FROM pet WHERE nome like ?";
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "%" + nome + "%");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Pet p = new Pet();
				p.setNome(rs.getString("nome"));
				p.setTipo(rs.getString("tipo"));
				p.setRaca(rs.getString("raca"));
				p.setPeso(rs.getDouble("peso"));
				p.setNascimento(rs.getDate("nascimento"));
				pets.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pets;
	}

}
