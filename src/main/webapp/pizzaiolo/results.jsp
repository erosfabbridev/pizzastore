<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html lang="it" class="h-100">
<head>

<!-- Common imports in pages -->
<jsp:include page="../header.jsp" />

<title>Lista Elementi</title>
</head>

<body class="d-flex flex-column h-100">

	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp"></jsp:include>


	<!-- Begin page content -->
	<main class="flex-shrink-0">
		<div class="container">

			<div
				class="alert alert-success alert-dismissible fade show  ${successMessage==null?'d-none':'' }"
				role="alert">
				${successMessage}
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
			<div class="alert alert-danger alert-dismissible fade show d-none"
				role="alert">
				Esempio di operazione fallita!
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
			<div class="alert alert-info alert-dismissible fade show d-none"
				role="alert">
				Aggiungere d-none nelle class per non far apparire
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>



			<div class='card'>
				<div class='card-header'>
					<h5>Lista dei risultati</h5>
				</div>
				<div class='card-body'>
					<a class="btn btn-primary " href="PrepareInsertArticoloServlet">Add
						New</a>

					<div class='table-responsive'>
						<table class='table table-striped '>
							<thead>
								<tr>
									<th>Id</th>
									<th>Codice</th>
									<th>Prezzo Totale</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listaPizzeAttribute}" var="pizzaItem">
								<c:if test="${pizzaItem.active == true}" var="booleanValue">
									<tr>
										<td><c:out value="${pizzaItem.id}" />/td>
										<td><c:out value="${pizzaItem.descrizione}" />/td>
										<td><c:out value="${pizzaItem.prezzoBase}" /></td>
										<td><a class="btn  btn-sm btn-outline-secondary"
											href="ExecuteVisualizzaPizzaServlet?idOrdine=<c:out value="${pizzaItem.id}"/>">Visualizza</a>
										</td>
										<td><a class="btn  btn-sm btn-outline-secondary"
											href="ExecuteVisualizzaOrdineServlet?idOrdine=<c:out value="${pizzaItem.id}"/>">Modifica</a>
										</td>
										<td><a class="btn  btn-sm btn-outline-secondary"
											href="ExecuteVisualizzaOrdineServlet?idOrdine=<c:out value="${pizzaItem.id}"/>">Elimina</a>
										</td>
									</tr>
								</c:if>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<!-- end card-body -->
				</div>
				<!-- end card -->
			</div>


			<!-- end container -->
		</div>

	</main>

	<!-- Footer -->
	<jsp:include page="../footer.jsp" />

	<!-- Modal conferma delete -->
	<div class="modal fade" id="deleteModal" tabindex="-1"
		aria-labelledby="deleteModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteModalLabel">Conferma
						Operazione</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Continuare con l'operazione?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Annulla</button>
					<button type="button" class="btn btn-primary">Continua</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal conferma delete -->

</body>
</html>