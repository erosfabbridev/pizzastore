<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="it" class="h-100">
<head>

<!-- Common imports in pages -->
<jsp:include page="../header.jsp" />

<title>Inserisci Nuovo Ordine</title>
</head>
<body class="d-flex flex-column h-100">

	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp"></jsp:include>


	<!-- Begin page content -->
	<main class="flex-shrink-0">
		<div class="container">

			<div
				class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }"
				role="alert">
				${errorMessage}
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>

			<div class='card'>
				<div class='card-header'>
					<h5>Inserisci nuovo pizza</h5>
				</div>
				<div class='card-body'>

					<h6 class="card-title">
						I campi con <span class="text-danger">*</span> sono obbligatori
					</h6>


					<form method="post" action="ExecuteInsertPizzaServlet"
						class="row g-3" novalidate="novalidate">


						<div class="col-md-6">
							<label for="codice" class="form-label">descrizione<span class="text-danger">*</span></label> <input
								type="text" name="codice" id="codice" class="form-control"
								placeholder="Descrizione" value="${pizza.descrizione}">
						</div>
						<div class="col-md-6">
							<label for="codice" class="form-label">Lista ingredienti<span class="text-danger">*</span></label> <input
								type="text" name="codice" id="codice" class="form-control"
								placeholder="Ingredienti" value="${pizza.listaIngredienti}">
						</div>
						
						<div class="col-md-6">
							<label for="codice" class="form-label">Prezzo base<span class="text-danger">*</span></label> <input
								type="number" name="codice" id="codice" class="form-control"
								placeholder="0" value="${pizza.prezzoBase}">
						</div>

						


						<div class="col-12">
							<button type="submit" name="insertSubmit" value="insertSubmit"
								id="insertSubmit" class="btn btn-dark">Conferma</button>
						</div>

					</form>



					<!-- end card-body -->
				</div>
				<!-- end card -->
			</div>


			<!-- end container -->
		</div>

	</main>

	<!-- Footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>