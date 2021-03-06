<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
		<link href="css/style.css" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


		<title>Inscription</title>
	</head>
	<body>
		<!-- ****** -->
		<!-- HEADER -->
		<!-- ****** -->
		<header>
			<%@ include file="header.jsp" %>
		</header>
		
		<!-- ***************** -->
		<!-- CONTENU PRINCIPAL -->
		<!-- ***************** -->
		<main class="inscription">			
		
			<!-- ********** -->
			<!-- FORMULAIRE -->
			<!-- ********** -->
			<form method="POST" action="InscriptionUtilisateur" class="container">
				<fieldset>
				<div class="element3">
					<legend>Inscription</legend>
				</div>	
				<br>
					<!-- FORMULAIRE PRINCIPALE -->
					<div id="formulairePrincipal" class="background">
						<!-- FORMULAIRE GAUCHE -->
						<div id="formGauche">
							<div>
								<label for="pseudo">Pseudo</label>
								<input id="pseudo" type="text" name="pseudo">							
							</div>
							<div>
								<label for="prenom">Pr�nom</label>
								<input id="prenom" type="text" name="prenom">							
							</div>
							<div>
								<label for="telephone">T�l�phone</label>
								<input id="telephone" type="text" name="telephone">							
							</div>
							<div>
								<label for="codePostal">Code postal</label>
								<input id="codePostal" type="text" name="codePostal">							
							</div>
							<div>
								<label for="password">Mot de passe</label>
								<input id="password" type="password" name="password">							
							</div>
						
						</div>
						<!-- FORMULAIRE DROIT -->
						<div id="formDroit">
							<div>
								<label for="nom">Nom</label>
								<input id="nom" type="text" name="nom">							
							</div>
							<div>
								<label for="email">Email</label>
								<input id="email" type="text" name="email">							
							</div>
							<div>
								<label for="rue">Rue</label>
								<input id="rue" type="text" name="rue">							
							</div>
							<div>
								<label for="ville">Ville</label>
								<input id="ville" type="text" name="ville">							
							</div>
							<div>
								<label for="passwordConfirme">Confirmer password</label>
								<input id="passwordConfirme" type="password" name="passwordConfirme">							
							</div>						
						</div>			  
					</div>
					<br>
					<!-- Fin formulaire principale -->
					
					<!-- BOUTONS -->
					<div>
						<button type="submit" class="btn btn-primary">Cr�er</button>
						<a class="btn btn-info" href="home">Annuler</a>
					</div>
					<p>${message}</p>				
				</fieldset>
			</form>
		</main>
		<footer>
	<nav>
		<a href="home">Acceuil</a><a href="#">FAQ</a><a href="#">Contact</a><a href="ConnexionUtilisateur">Se connecter</a> 
	</nav>
	<div>
	  <strong>Suivez nous sur les r�seaux sociaux !</strong>
		<p> Avec ENI-encheres, achetez aux ench�res, en salle ou sur Internet. 281 commissaires-priseurs garantissent les objets.
		 Ces derniers publient quotidiennement en ligne les informations relatives � leurs prochaines ventes aux ench�res sur le site. 
		 Ils permettent ainsi aux acheteurs du monde entier de consulter gratuitement la quasi-totalit� des annonces de ventes aux ench�res en France.</p>
	</div>
</footer>
	</body>
</html>