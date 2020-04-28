package edu.curso;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Principal {
	
	public static void main(String[] args) {
		ApplicationContext app = 
				new AnnotationConfigApplicationContext(Configuracao.class);
		
		Pessoa p1 = app.getBean("pessoa", Pessoa.class);
		Pessoa p2 = app.getBean("pessoa", Pessoa.class);
		p1.setNome("Maria");
		System.out.println(p1);
		p1.falar();
		System.out.println(p2);
		p2.falar();
	}

}
