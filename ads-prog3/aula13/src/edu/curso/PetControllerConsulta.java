package edu.curso;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class PetControllerConsulta {
	
	@Autowired
	List<Pet> lista;
	
	@GetMapping("/petConsulta")
	public ModelAndView petConsulta(@RequestParam("nome") String nome, 
			@RequestParam("cmd") String cmd) {
		ModelAndView mv = new ModelAndView("consultaPet");	
		List<Pet> pets = new ArrayList<Pet>();
		mv.addObject("pet", new Pet());
		if ("consultar".equals(cmd)) { 
			for (Pet temp : lista) { 
				if (temp.getNome().contains(nome)) { 
					pets.add(temp);
				}
			}
			mv.addObject("pets", pets);
		} else if ("pet".equals(cmd)) { 
			mv = new ModelAndView("pet");
			mv.addObject("pet", new Pet());
		}
		return mv;
	}
}
