

package com.notariasousa.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class VerifyController {
	
	private String errorg;
	public String getErrorg() {
		return errorg;
	}
	public void setErrorg(String errorg) {
		this.errorg = errorg;
	}
	
	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/logeo", method = RequestMethod.POST)
	protected ModelAndView usuarios_buscar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String login = request.getParameter("txtLogin").trim();
		String clave = request.getParameter("txtClave").trim();


		if(login!=null && clave!=null){

			if(login.equals("neoadmin") && clave.equals("123456")){
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(60 * 60 * 8);
				session.setAttribute( "AppID", "260888895055sdfsdsdfsd");
				session.setAttribute( "AppLogin", login);
				session.setAttribute( "AppClave", clave);
				session.setAttribute( "AppPerfil", "Administrador");
				session.setAttribute( "AppPerfilId", "1");
				session.setAttribute( "AppUsuario", "Williams Enero");
				return new ModelAndView("redirect:/principalAdmin.html");
			}else if(login.equals("neolabs") && clave.equals("147258")){
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(60 * 60 * 8);
				session.setAttribute( "AppID", "4645645ydfgbfdgwe32sdfdf");
				session.setAttribute( "AppLogin", login);
				session.setAttribute( "AppClave", clave);
				session.setAttribute( "AppPerfil", "Laboratorio");
				session.setAttribute( "AppPerfilId", "2");
				session.setAttribute( "AppUsuario", "Neo Labs S.A");
				return new ModelAndView("redirect:/principal.html");
			} else {
				errorg = "Usuario y/o Clave son incorrectos";
				System.out.println(errorg);
				return new ModelAndView("redirect:/index.html");
			}
		}  else {
			errorg = "Ingresos los datos de su cuenta de acceso !!!";
			System.out.println(errorg);
			return new ModelAndView("redirect:/index.html");
		}
	}
	
}
	