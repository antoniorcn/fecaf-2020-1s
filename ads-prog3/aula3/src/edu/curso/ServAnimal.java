package edu.curso;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/servAnimal")
public class ServAnimal extends GenericServlet {
	private List<Animal> lista = new ArrayList<>();
	@Override
	public void service(ServletRequest req, 
			ServletResponse res) 
					throws ServletException, IOException {
		String nome = req.getParameter("NOMEPET");
		String nasc = req.getParameter("NASC");
		String peso = req.getParameter("PESO");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Animal a = new Animal();
		try { 
			a.setNome(nome);
			a.setNascimento(sdf.parse(nasc));
			a.setPeso(Float.parseFloat(peso));
			lista.add(a);
			System.out.println("Existem " + lista.size() + " animais");
		} catch(Exception e) { 
			e.printStackTrace();
		}
	}

}
