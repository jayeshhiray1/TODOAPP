package com.todo.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.todo.ado.ToDoDao;
import com.todo.entities.Todo;

import sun.awt.ModalExclude;

@Controller
public class Homecontroller {
	@Autowired
	ToDoDao toDoDao;

	@RequestMapping("/home")
	public String HomeMethod(Model m) {

		m.addAttribute("page", "Home");

		List<Todo> showAll = this.toDoDao.showAll();

		m.addAttribute("listItems", showAll);

		return "home";
	}

	@RequestMapping("/add")
	public String AddMethod(Model m) {

		Todo todo = new Todo();
		todo.setTodDate(new Date());

		m.addAttribute("page", "Add");
		m.addAttribute("todo", todo);

		return "home";
	}

	@RequestMapping(value = "saveTodo", method = RequestMethod.POST)
	public String saveTodo(@ModelAttribute Todo todo, Model m) {
		todo.setTodDate(new Date());
		System.out.println("======" + todo);
		this.toDoDao.save(todo);

		return "home";
	}
}
