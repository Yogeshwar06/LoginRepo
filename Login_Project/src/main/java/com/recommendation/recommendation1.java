package com.recommendation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.recommendation.dao.RecommendationDao;

/**
 * Servlet implementation class recommendation1
 */
@WebServlet("/recommendation1")
public class recommendation1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String genre = request.getParameter("genre");
		
		RecommendationDao dao  = new RecommendationDao();
		ArrayList<String> movies = new ArrayList<>();
//		movies.add("Happier");
//		movies.add("You are the reason");
		
		movies = dao.check(genre);
		for(String movie:movies) 
		{
			System.out.println(movie + "\n");
		}
		if(movies.size()!=0)
		{
			
//			HttpSession session = request.getSession();
			request.setAttribute("movies", movies);
//			response.sendRedirect("recommendtionResult.jsp");
			 RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
			
			 rd.forward(request, response);
	        
		}
		else
		{
			
			response.sendRedirect("recommendations.jsp");
		}
	}

}
