package edu.curso;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	@RequestMapping("/a")
	public ModelAndView raizA() {
		ModelAndView mv = new ModelAndView("helloA");
		mv.addObject("texto", "Este texto foi criado no controller");
		return mv;
	}
	
	@RequestMapping("/b")
	public ModelAndView raizB() {
		ModelAndView mv = new ModelAndView("helloB");
		Pessoa p = new Pessoa();
		p.setId(1010L);
		p.setNome("Antonio Carvalho");
		mv.addObject("pessoa", p);
		return mv;
	}

}
