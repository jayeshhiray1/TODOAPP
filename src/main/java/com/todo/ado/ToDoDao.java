package com.todo.ado;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.todo.entities.Todo;


@Component
public class ToDoDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	public int save(Todo todo) {

		return (Integer) this.hibernateTemplate.save(todo);

	}
	
	public List<Todo> showAll(){
		
		List<Todo> list= this.hibernateTemplate.loadAll(Todo.class);
		return list;
	}

}
