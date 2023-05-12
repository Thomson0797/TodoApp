package Project1.TodoApp.Home;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TodoService {

	private static List<Todo> todos = new ArrayList<>();
	private static int countt = 0;

	static {
		todos.add(new Todo(++countt, "Thom", "activity1", LocalDate.now().plusYears(1), false));
		todos.add(new Todo(++countt, "Thom", "activity2", LocalDate.now().plusYears(2), false));
		todos.add(new Todo(++countt, "Thom", "activity3", LocalDate.now().plusYears(3), false));
	}

	public List<Todo> findByUsername(String username) {
		return todos;
	}

	public void addtodolist(String description, String username, LocalDate targetDate, boolean done) {
		todos.add(new Todo(++countt, username, description, targetDate, done));
		return;
	}

	public boolean deletetodo(int id)
	{
		for(Todo todo: todos)
		{
			if(todo.getId() == id)
			{
				todos.remove(todo);
				return true;
			}
		}
		return false;
	}
	public Todo showupdatetodo(int id)
	{
		Todo updatingtodo = new Todo(id, null, null, null, false);
		for(Todo todo: todos)
		{
			if(todo.getId() == id)
			{
				updatingtodo = todo;
				break;
			}
		}
		return updatingtodo;
	}

	public void updatetodo(Todo todo1) {
		// TODO Auto-generated method stub
		deletetodo(todo1.getId());
		todos.add(todo1);
	}

}
