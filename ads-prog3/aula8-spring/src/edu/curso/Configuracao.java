package edu.curso;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Configuracao {
	
	@Bean
	public Pessoa pessoa() {
		Pessoa p1 = new Pessoa();
		p1.setNome("Antonio");
		return p1;
	}
}
