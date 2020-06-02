package edu.curso;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PetController {
	
	@Autowired
	List<Pet> lista;
	
	@GetMapping("/pet")
	public ModelAndView petView() { 
		ModelAndView mv = new ModelAndView("pet");
		mv.addObject("pet", new Pet());
		return mv;
	}
	
	@PostMapping("/petController")
	public ModelAndView petAdicionar(@ModelAttribute("pet") Pet p, 
			@RequestParam("cmd") String cmd) {
		List<Pet> pets = new ArrayList<Pet>();
		ModelAndView mv = new ModelAndView("pet");
		mv.addObject("pets", pets);
		mv.addObject("pet", new Pet());
		if ("adicionar".equals(cmd)) { 
			lista.add(p);
			System.out.printf("Lista tem %d elementos. \n", lista.size());
		} else if ("consultar".contentEquals(cmd)) { 
			for (Pet temp : lista) { 
				if (temp.getNome().contains(p.getNome())) { 
					pets.add(temp);
				}
			}
		}
		return mv;
	}
}
