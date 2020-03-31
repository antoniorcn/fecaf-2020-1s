package edu.curso;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContatoServlet")
public class ContatoServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws IOException {
		String nome = req.getParameter("TXTNOME");
		String email =req.getParameter("TXTEMAIL");
		String tel = req.getParameter("TXTTEL");
		req.getSession().setMaxInactiveInterval(10*60);
		List<Contato> contatos = (List<Contato>) 
				getServletContext().getAttribute("LISTA");
		if (contatos == null) { 
			contatos = new ArrayList<>();
			getServletContext().setAttribute("LISTA", contatos);
			System.out.println("CRIADA A LISTA");
		} else { 
			System.out.println("USANDO A LISTA");
		}
		
		Contato c = new Contato();
		c.setNome(nome);
		c.setEmail(email);
		c.setTelefone(tel);
		
		contatos.add(c);
		System.out.printf("Lista agora tem %d elementos\n", contatos.size());
		
		res.sendRedirect("./contatos.jsp");
	}
}
