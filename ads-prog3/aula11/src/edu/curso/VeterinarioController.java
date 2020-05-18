package edu.curso;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/veterinarioController")
public class VeterinarioController extends HttpServlet{
	private List<Veterinario> lista = new ArrayList<>();
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		
		String nome = request.getParameter("nome");
		String crv = request.getParameter("crv");
		String especialidade = request.getParameter("especialidade");
		String strValor = request.getParameter("valor");
		
		Veterinario vet = new Veterinario();
		vet.setNome(nome);
		vet.setCrv(crv);
		vet.setEspecialidade(especialidade);
		vet.setPrecoHora(Double.parseDouble(strValor));
		
		lista.add(vet);
		System.out.printf("Lista possui %d elementos \n", lista.size());
		String mensagem = "Veterinario cadastrado com sucesso";
		//PrintWriter out = response.getWriter();
		//out.println(mensagem);
		request.getSession().setAttribute("MENSAGEM", mensagem);
		request.getSession().setAttribute("LISTA", lista);
		response.sendRedirect("./veterinario.jsp");
	}

}
