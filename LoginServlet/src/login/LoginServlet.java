package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LoginServlet extends HttpServlet {
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username;
		String password;
		
		username = request.getParameter("username");
		password = request.getParameter("password");
		
//				String temp = username;
				
		if( username.equals(getServletConfig().getInitParameter("username"))
			&& password.equals(getServletConfig().getInitParameter("password")))
		{
			request.setAttribute("value", username);
			request.getRequestDispatcher("/userLogged.jsp").forward(request, response);
			
			//response.sendRedirect("userLogged.jsp");
		
		}
		
		else
			request.getRequestDispatcher("/invalidLogin.jsp").forward(request, response);
		 //response.sendRedirect("invalidLogin.jsp");
					
		
		
	}
	
		

}
