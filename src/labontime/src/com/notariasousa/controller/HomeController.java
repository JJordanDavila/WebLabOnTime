package com.notariasousa.controller;

import com.notariasousa.exception.DAOExcepcion;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("principalAdmin")
	public ModelAndView principalAdmin(HttpServletRequest request) throws DAOExcepcion{
		ModelAndView MV = new ModelAndView();
		HttpSession session = request.getSession();
		System.out.println("Valor de Sesionn: " + session.getAttribute("AppID"));
		MV.setViewName("principal_admin");
		return MV;
	}
	
	@RequestMapping("principal")
	public ModelAndView principal(HttpServletRequest request) throws DAOExcepcion{
		ModelAndView MV = new ModelAndView();
		HttpSession session = request.getSession();
		System.out.println("Valor de Sesionn: " + session.getAttribute("AppID"));
		MV.setViewName("principal");
		return MV;
	}
	
	@RequestMapping("/pacientes")
	public ModelAndView pacientes(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/pacientes/_admin");
		return MV;
	}
	
	@RequestMapping("/pacientes/create")
	public ModelAndView pacientesCreate(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/pacientes/_create");
		return MV;
	}
	
	@RequestMapping("/medicos")
	public ModelAndView medicos(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/medicos/_admin");
		return MV;
	}
	
	@RequestMapping("/medicos/create")
	public ModelAndView medicosCreate(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/medicos/_create");
		return MV;
	}
	
	@RequestMapping("/solicitudes")
	public ModelAndView solicitudes(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/solicitudes/_admin");
		return MV;
	}
	
	@RequestMapping("/solicitudes/create")
	public ModelAndView solicitudesCreate(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/solicitudes/_create");
		return MV;
	}
	
	@RequestMapping("/solicitudes/atender")
	public ModelAndView solicitudesAtender(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/solicitudes/_atender");
		return MV;
	}
	
	@RequestMapping("/analisis")
	public ModelAndView analisis(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/analisis/_admin");
		return MV;
	}
	
	@RequestMapping("/analisis/create")
	public ModelAndView analisisCreate(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/analisis/_create");
		return MV;
	}
	
	@RequestMapping("/laboratorios")
	public ModelAndView laboratorios(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/laboratorios/_admin");
		return MV;
	}
	
	@RequestMapping("/laboratorios/create")
	public ModelAndView laboratoriosCreate(HttpServletRequest request) throws DAOExcepcion {
		ModelAndView MV = new ModelAndView();	
		MV.setViewName("/laboratorios/_create");
		return MV;
	}
	
	@RequestMapping("logout")
    public ModelAndView closeApp(HttpServletRequest request) throws DAOExcepcion{
		HttpSession session = request.getSession();	
		session.invalidate(); //Eliminar Sesion
		return new ModelAndView("redirect:/index.html");		
	}
}
