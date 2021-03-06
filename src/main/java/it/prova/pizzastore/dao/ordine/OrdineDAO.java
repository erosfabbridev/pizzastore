package it.prova.pizzastore.dao.ordine;

import java.util.List;
import java.util.Optional;

import it.prova.pizzastore.dao.IBaseDAO;
import it.prova.pizzastore.model.Ordine;
import it.prova.pizzastore.model.Utente;

public interface OrdineDAO extends IBaseDAO<Ordine> {
	
	public Integer calcolaPrezzoOrdine(Ordine ordine) throws Exception;
	
	public List<Ordine> getOrdiniAttivi(Utente utente) throws Exception;
	
	public Optional<Ordine> findOneEager(Long id) throws Exception;
	
	public List<Ordine> findByExample(Ordine example) throws Exception;

	
}
