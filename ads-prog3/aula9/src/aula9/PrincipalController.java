package aula9;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrincipalController {
	
	@RequestMapping("/a")
	public String helloA() {
		return "helloA";
	}

}
