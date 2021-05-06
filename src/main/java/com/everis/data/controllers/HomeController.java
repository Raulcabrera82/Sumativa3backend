package com.everis.data.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.everis.data.models.Producto;
import com.everis.data.services.ProductoService;

@Controller
public class HomeController {

	@Autowired
	ProductoService productoService;
	
	@RequestMapping("/")
	public String index(HttpSession session) {
		//session.invalidate();
		session.setAttribute("registrado",0);
		return "login.jsp";
	}
	
	@RequestMapping("/carrito")
	public String mostrarCarrito(Model model) {
		List<Producto> productos =productoService.findAll();
		model.addAttribute("listadoProductos",productos);
		float totalCarrito = 0;
		for(Producto elemento:productos ) {
			totalCarrito += elemento.getPrecio();
		}
		model.addAttribute("totalCarrito", totalCarrito);
		//calculo del carrito de compras 
		return "carrito.jsp";
	}

}
