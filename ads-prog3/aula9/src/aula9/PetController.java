package aula9;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PetController {
	
	@RequestMapping("/pet")
	public ModelAndView pet() { 
		Pet p = new Pet();
		p.setId(1L);
		p.setNome("Totó");
		p.setEspecie("cachorro");
		p.setRaca("viralata");
		p.setNascimento(new Date());
		p.setGenero(true);
		
		ModelAndView mv = new ModelAndView("pet");
		mv.addObject("PET", p);
		return mv;
	}

}
