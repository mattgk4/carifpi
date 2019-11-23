package br.com.ifpi.carifpi.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import br.com.ifpi.carifpi.dao.CarroDao;
import br.com.ifpi.carifpi.modelo.Carro;
@WebServlet(name = "DeleteServlet", urlPatterns = {"/delCar"})
@SuppressWarnings("serial")
public class DelCarroServlet extends HttpServlet{
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
		Long id = new Long(req.getParameter("id"));
		
		CarroDao dao = new CarroDao();
		dao.remove(new Carro(id));
		
		RequestDispatcher r = req.getRequestDispatcher("index.jsp"); 
		r.forward( req, res );
	}
}
