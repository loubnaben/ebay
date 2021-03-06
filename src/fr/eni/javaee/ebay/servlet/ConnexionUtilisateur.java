package fr.eni.javaee.ebay.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.eni.javaee.ebay.bll.ArticleManager;
import fr.eni.javaee.ebay.bll.BLLException;
import fr.eni.javaee.ebay.bll.CategorieManager;
import fr.eni.javaee.ebay.bll.ManagerFactory;
import fr.eni.javaee.ebay.bll.UtilisateurManager;
import fr.eni.javaee.ebay.bo.ArticleVendu;
import fr.eni.javaee.ebay.bo.Categorie;
import fr.eni.javaee.ebay.bo.Utilisateur;
import fr.eni.javaee.ebay.dal.DALException;

/**
 * Servlet implementation class ConnexionUtilisateur
 */
@WebServlet("/ConnexionUtilisateur")
public class ConnexionUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CHAMP_PSEUDO = "identifiant";
	private static final String CHAMP_PASS = "motdepasse";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Affichage de la page d'inscription:
		 
		CategorieManager categorieManager = null;

		try {
			 
			categorieManager = ManagerFactory.getCategorieManager();

			 
			List<Categorie> listeCategories = categorieManager.listeCategories();

			 
			request.setAttribute("listeCategories", listeCategories);
		} catch (BLLException e) {

			request.setAttribute("message", e.getMessage());
		}
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/connexion.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String erreur = "Utilisateur inconnu.";
		String succes = "Succès de la connexion.";

		// 1:Récupération des paramétres de la requete
		String identifiant = request.getParameter(CHAMP_PSEUDO);
		String motDePasse = request.getParameter(CHAMP_PASS);

		// Creer un utilisateur à partir de la JSP
		Utilisateur utilisateurJSP = new Utilisateur(identifiant, motDePasse);

		// Gestion d'erreur de connexion
		UtilisateurManager utilisateurManager = null;
		Utilisateur utilisateur = null;
		try {
			utilisateurManager = ManagerFactory.getUtilisateurManageur();
			utilisateur = utilisateurManager.seConnecter(utilisateurJSP);
		} catch (BLLException e) {
			//TODO revoir exeption
			request.setAttribute("message", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/connexion.jsp");
			rd.forward(request, response);
			return;
		}

		// Récupération de la session depuis la requête

		HttpSession session = request.getSession();

		// Si aucune erreur de validation n'a eu lieu, alors ajouter un
		// Utilisateur à la session, sinon suppression de la session.

		if (utilisateur != null) {
			session.setAttribute("sessionIdUtilisateur", utilisateur.getNoUtilisateur());
			session.setAttribute("sessionPseudoUtilisateur", utilisateur.getPseudo());
			request.setAttribute("message", succes);
			response.sendRedirect("home ");
		} else {
			request.setAttribute("message", erreur);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/connexion.jsp");
			rd.forward(request, response);
		}
	}
}
