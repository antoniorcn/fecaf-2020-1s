package edu.curso;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PessoaController {
	@RequestMapping("/pessoa")
	public ModelAndView mostraDados() { 
		Pessoa p = new Pessoa();
		p.setNome("Antonio Carvalho");
		p.setEmail("antoniorcn@hotmail.com");
		p.setNascimento(new Date());
		
		ModelAndView mv = new ModelAndView("pessoa");
		mv.addObject("dados", p);
		return mv;
	}
}
