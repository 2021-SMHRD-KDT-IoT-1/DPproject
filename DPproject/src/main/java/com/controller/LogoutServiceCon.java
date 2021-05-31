package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.Command;

public class LogoutServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		
		HttpSession session = request.getSession();
		session.removeAttribute("dto");
		
		moveURL = "intro.jsp";
		return moveURL;
	}

}
