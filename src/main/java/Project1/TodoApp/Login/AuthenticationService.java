package Project1.TodoApp.Login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

	public boolean authenticate(String name, String password)
	{
		boolean isnamevalid = name.equalsIgnoreCase("ts");
		boolean ispassvalid = password.equalsIgnoreCase("rs");
		return isnamevalid && ispassvalid;
	}
}
