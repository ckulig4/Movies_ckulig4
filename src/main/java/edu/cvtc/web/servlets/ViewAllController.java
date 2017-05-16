/**
 * 
 */
package edu.cvtc.web.servlets;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.cvtc.web.dao.MovieDao;
import edu.cvtc.web.dao.impl.MovieDaoException;
import edu.cvtc.web.dao.impl.MovieDaoImpl;
import edu.cvtc.web.model.Movie;

/**
 * @author ckulig
 *
 */


/**
 * Servlet implementation class ViewAll
 */
@WebServlet({"/ViewAll", "/MovieList", "/Films" })
public class ViewAllController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String target = null;
		
		try {
			
			final MovieDao movieDao = new MovieDaoImpl();
			final List<Movie> movies = movieDao.retrieveMovies();
			
			final String sortType = request.getParameter("sortType");
			
			if (null != sortType) {
				sort(movies, sortType);
			}			
			
			request.setAttribute("movies", movies);
			
			target = "view-all.jsp";
			
		} catch (MovieDaoException e) {
			e.printStackTrace();
			request.setAttribute("message", e.getMessage());
			target = "error.jsp";
		}
		
		
		request.getRequestDispatcher(target).forward(request, response);
		
	}
	
	private void sort(final List<Movie> movies, final String sortType) {
		switch (sortType) {
		case "title":
			Collections.sort(movies, (movie1, movie2) -> movie1.getTitle().compareTo(movie2.getTitle()));
			break;
		case "director":
			Collections.sort(movies, (movie1, movie2) -> movie1.getDirector().compareTo(movie2.getDirector()));
			break;	
		case "lengthInMinutes":
			Collections.sort(movies, (movie1, movie2) -> movie1.getLengthInMinutes().compareTo(movie2.getLengthInMinutes()));
			break;
		default:
			break;
		}
	}
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
