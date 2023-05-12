package Project1.TodoApp.Home;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("username")
public class TodoController {

	private TodoService todoservice;

	public TodoController(TodoService todoservice) {
		super();
		this.todoservice = todoservice;
	}

	@RequestMapping(value = "/todoList", method = RequestMethod.GET)
	public String listalltodos(ModelMap model) {
		model.addAttribute("todoLists", todoservice.findByUsername("Thom"));
		return "TodoList";
	}

	@RequestMapping(value = "/addtodo", method = RequestMethod.GET)
	public String shownewtodo(ModelMap model, HttpSession session) {
		String username = (String) session.getAttribute("username");
		Todo todo1 = new Todo(0, username, "", LocalDate.now(), false);
		model.put("todo1", todo1);
		return "Addtodo";
	}

	@RequestMapping(value = "/addtodo", method = RequestMethod.POST)
	public String addnewtodo(ModelMap model, HttpSession session,Todo todo1) {

		 
		todoservice.addtodolist(todo1.getDescription(), (String) session.getAttribute("username"),
				todo1.getTargetdate(), false);
		session.setAttribute("msgnote", "Last Activity: Added new todo list");
		return "redirect:todoList";
	}

	@RequestMapping(value = "/delete-todo")
	public String deletetodo(@RequestParam("id") int id, HttpSession session) {
		String deletedmsg;
		if (todoservice.deletetodo(id))
			deletedmsg = "Last Activity: Successully deleted item number: " + id;
		else
			deletedmsg = "cannot delete item numeber: " + id;
		session.setAttribute("msgnote", deletedmsg);
		return "redirect:todoList";
	}

	@RequestMapping(value = "/update-todo", method = RequestMethod.GET)
	public String showupdatetodo(@RequestParam("id") int id, HttpSession session, ModelMap model) {
		Todo todo1 = todoservice.showupdatetodo(id);
		System.out.println(todo1);
		model.addAttribute("todo1", todo1);
		return "Addtodo";
	}
	
	@RequestMapping(value = "/update-todo", method = RequestMethod.POST)
	public String updatetodo(ModelMap model, HttpSession session,Todo todo1) {

		todoservice.updatetodo(todo1);
		session.setAttribute("msgnote", "Last Activity: Updated todo list: " + todo1.getId());
		return "redirect:todoList";
	}
}
