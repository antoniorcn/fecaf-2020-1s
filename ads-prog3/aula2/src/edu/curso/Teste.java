package edu.curso;

import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/teste")
public class Teste extends GenericServlet {
	public void service(ServletRequest req,
			ServletResponse res) {
		System.out.println("Executado ... ");
		try {
			PrintWriter out = res.getWriter();
			out.println("<h1>Olá Navegador</h1>");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
