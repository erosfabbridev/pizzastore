package it.prova.pizzastore.web.servlet.ordine;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.prova.pizzastore.model.Cliente;
import it.prova.pizzastore.model.Pizza;
import it.prova.pizzastore.model.Utente;
import it.prova.pizzastore.service.MyServiceFactory;

/**
 * Servlet implementation class PrepareInsertOrdineServlet
 */
@WebServlet("/PrepareInsertOrdineServlet")
public class PrepareInsertOrdineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			List<Cliente> listaClienti = MyServiceFactory.getClienteServiceInstance().listAll();
			List<Pizza> listaPizze = MyServiceFactory.getPizzaServiceInstance().listAll();
			List<Utente> listaUtenti = MyServiceFactory.getUtenteServiceInstance().listAll();
			request.setAttribute("utenti_attribute", listaUtenti);
			request.setAttribute("clienti_attribute", listaClienti);
			request.setAttribute("pizze_attribute", listaPizze);
			request.getRequestDispatcher("/pizzaiolo/insertordine.jsp").forward(request, response);
			;
			return;
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errorMessage", "Attenzione si è verificato un errore.");
			request.getRequestDispatcher("/pizzaiolo/index.jsp").forward(request, response);
			return;
		}

	}

}
