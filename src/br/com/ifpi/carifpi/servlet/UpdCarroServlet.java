package br.com.ifpi.carifpi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import br.com.ifpi.carifpi.dao.CarroDao;
import br.com.ifpi.carifpi.modelo.Carro;

@WebServlet(name = "UpdateServlet", urlPatterns = {"/updCar"})
@SuppressWarnings("serial")
public class UpdCarroServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String modelo = req.getParameter("modelo");
		String placa = req.getParameter("placa");
		String marca = req.getParameter("marcas");
		String preco = req.getParameter("preco");
		String foto = req.getParameter("foto");
		String data = req.getParameter("data");
		Long id = new Long(req.getParameter("idcarro"));
		Calendar dataRegistro = null;

		Double precod = new Double(preco);

		PrintWriter out = res.getWriter();
		try {
			Date date = new SimpleDateFormat("dd/MM/yy").parse(data);
			dataRegistro = Calendar.getInstance();
			dataRegistro.setTime(date);

		} catch (ParseException e) {
			out.println("Erro de conversão da data!");
		}

		Carro carlet = new Carro(id, modelo, marca, placa, foto, precod, dataRegistro);
		
		CarroDao dao = new CarroDao();
		dao.altera(carlet);
		
		RequestDispatcher r = req.getRequestDispatcher( "index.jsp" ); 
		r.forward( req, res );
	}
}
