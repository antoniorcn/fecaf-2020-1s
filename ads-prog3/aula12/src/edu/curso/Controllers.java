package edu.curso;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controllers {

	@RequestMapping(value = {"/welcome", "/wel"}, 
			method={RequestMethod.GET, RequestMethod.POST})
	public String welcomeStartPage() { 	
		return "welcome";
	}
	
	@GetMapping("/dog")
	public ModelAndView getDog() { 
		Animal a = new Animal();
		a.setNome("Toto");
		a.setRaca("ViraLata");
		
		ModelAndView mv = new ModelAndView("pet");
		mv.addObject("animal", a);
		return mv;
	}
}
