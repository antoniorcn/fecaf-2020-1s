package edu.curso;

import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/imc")
public class CalculoIMC extends GenericServlet {
	public void service(
			ServletRequest req, 
			ServletResponse res) {
		String peso = req.getParameter("PESO");
		String altura = req.getParameter("ALTURA");
		int nPeso = Integer.parseInt(peso);
		float nAltura = Integer.parseInt(altura) / 100.0f;
		System.out.println("Calculando IMC 2");
		System.out.println("Peso: " + peso);
		System.out.println("Altura: " + altura);
		float imc = nPeso / (nAltura * nAltura);
		try { 
			PrintWriter out = res.getWriter();
			out.println("Seu IMC � : " + imc);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
