package edu.curso;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/MeuServlet")
public class MeuServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException { 
		Enumeration<String> headers = req.getHeaderNames();
		while(headers.hasMoreElements()) { 
			String headerName = headers.nextElement();
			String headerValue = req.getHeader( headerName );
			System.out.println(headerName + " : " + headerValue);
		}
		
		PrintWriter out = res.getWriter();
		out.println("<h1>Ola Servlet com Http Servlet</h1>");
		
		res.setContentType("text/html");
		res.setStatus(200);
	}
}
