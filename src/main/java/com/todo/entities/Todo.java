package com.todo.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Todo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int todoId;
	
	private String todoTitel;
	private String todoBody;
	private Date todDate;
	
	public Todo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Todo(String todoTitel, String todoBody, Date todDate) {
		super();
		this.todoTitel = todoTitel;
		this.todoBody = todoBody;
		this.todDate = todDate;
	}
	public String getTodoTitel() {
		return todoTitel;
	}
	public void setTodoTitel(String todoTitel) {
		this.todoTitel = todoTitel;
	}
	public String getTodoBody() {
		return todoBody;
	}
	public void setTodoBody(String todoBody) {
		this.todoBody = todoBody;
	}
	public Date getTodDate() {
		return todDate;
	}
	public void setTodDate(Date todDate) {
		this.todDate = todDate;
	}
	public int getTodoId() {
		return todoId;
	}
	public void setTodoId(int todoId) {
		this.todoId = todoId;
	}
	@Override
	public String toString() {
		return "Todo [todoTitel=" + todoTitel + ", todoBody=" + todoBody + ", todDate=" + todDate + "]";
	}
			
	

}
