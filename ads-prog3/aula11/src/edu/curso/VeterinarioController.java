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
	private VeterinarioDAO vdao = new VeterinarioDAO();
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		
		String nome = request.getParameter("nome");
		String crv = request.getParameter("crv");
		String especialidade = request.getParameter("especialidade");
		String strValor = request.getParameter("valor");
		String cmd = request.getParameter("cmd");
		String mensagem = null;
		if ("adicionar".equals(cmd)) { 
			Veterinario vet = new Veterinario();
			vet.setNome(nome);
			vet.setCrv(crv);
			vet.setEspecialidade(especialidade);
			vet.setPrecoHora(Double.parseDouble(strValor));
			try { 
				vdao.adicionar(vet);
				mensagem = "Veterinario cadastrado com sucesso";
			} catch(Exception e) { 
				mensagem = "Erro ao gravar o veterinario " + e.getMessage();	
			}		
		} else if ("pesquisar".equals(cmd)) { 
			lista = vdao.pesquisarPorNome(nome);
		}

		request.getSession().setAttribute("MENSAGEM", mensagem);
		request.getSession().setAttribute("LISTA", lista);
		response.sendRedirect("./veterinario.jsp");
	}

}
