/**
 * 
 */
package edu.cvtc.web.servlets;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import edu.cvtc.web.model.Movie;
import edu.cvtc.web.util.WorkbookUtility;

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
			final String filePath = getServletContext().getRealPath(WorkbookUtility.INPUT_FILE);
			final File inputFile = new File(filePath);
			final List<Movie> movies = WorkbookUtility.retrieveMoviesFromWorkbook(inputFile);
			
			final String sortType = request.getParameter("sortType");
			
			if (null != sortType) {
				sort(movies, sortType);
			}			
			
			request.setAttribute("movies", movies);
			
			target = "view-all.jsp";
			
		} catch (InvalidFormatException e) {
			e.printStackTrace();
			request.setAttribute("message", "The workbook file has an invalid format.");
			target = "error.jsp";
		}
		
		
		request.getRequestDispatcher(target).forward(request, response);
		
	}
	
	private void sort(final List<Movie> movies, final String sortType) {
		switch (sortType) {
		case "title":
			Collections.sort(movies, (movie1, movie2) -> movie1.getTitle().compareTo(movie2.getTitle()));
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
