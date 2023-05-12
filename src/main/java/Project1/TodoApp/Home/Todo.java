package Project1.TodoApp.Home;

import java.time.LocalDate;


public class Todo {

	private int id;
	private String name;
	private String description;
	private LocalDate targetdate;
	private boolean done;

	public Todo(int id, String name, String description, LocalDate targetdate, boolean done) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.targetdate = targetdate;
		this.done = done;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public LocalDate getTargetdate() {
		return targetdate;
	}

	public boolean isDone() {
		return done;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setTargetdate(LocalDate targetdate) {
		this.targetdate = targetdate;
	}

	public void setDone(boolean done) {
		this.done = done;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", name=" + name + ", description=" + description + ", targetdate=" + targetdate
				+ ", done=" + done + "]";
	}

}
