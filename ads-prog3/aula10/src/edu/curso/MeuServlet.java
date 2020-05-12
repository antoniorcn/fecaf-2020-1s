package edu.curso;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/meuservlet")
public class MeuServlet extends HttpServlet {
	public boolean consultaLogin(String login) {
		String url = "jdbc:mariadb://localhost:3306/pets";
		String user = "root";
		String pass = "";
		try { 
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			PreparedStatement stmt = con.prepareStatement(
				"SELECT usuario FROM tbl_usuarios WHERE usuario = ?");
			stmt.setString(1,  login);
			ResultSet rs = stmt.executeQuery();
			return rs.first();
		} catch (Exception e) { 
			return false;
		}
	}
	public void doGet(HttpServletRequest req,
			HttpServletResponse res) throws IOException { 
		String login = req.getParameter("LOGIN");
		System.out.println("Servlet Executado");
		System.out.println("o Login é: " + login);
		boolean resultado = consultaLogin(login);
		PrintWriter out = res.getWriter();
		if (resultado) { 
			out.println("<h1>Usuario autenticado com sucesso</h1>");
		} else { 
			out.println("<h1>Usuario inexistente</h1>");
		}
	}
}
