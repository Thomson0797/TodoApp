package Project1.TodoApp.Login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class LoginController {
	
	private AuthenticationService authenticationservice;
	
	public LoginController(AuthenticationService authenticationservice) {
		super();
		this.authenticationservice = authenticationservice;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String gotologin()
	{
		return "Login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String gotohome(@RequestParam String username, @RequestParam String password, ModelMap model)
	{
		if(authenticationservice.authenticate(username, password))
		{
			model.put("username", username);
			return "Home";
		}
		model.addAttribute("Errormsg", "Invalid Credentials!! Try Again!");
		return "Login";
	}
}
