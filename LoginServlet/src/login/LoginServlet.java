package login;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LoginServlet extends HttpServlet {
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username;
		String password;
		
		boolean flag = false;
		
		username = request.getParameter("email");
		password = request.getParameter("password");
		
				
				
		
		Enumeration<String> initParams = getServletConfig().getInitParameterNames(); 
		
				while(initParams.hasMoreElements())
				{
					String usernameInitParams = initParams.nextElement();
					String passwordInitParams = getServletConfig().getInitParameter(usernameInitParams);
							
					if( usernameInitParams.equals(username) && passwordInitParams.equals(password))
						{
							flag = true;
						
							request.setAttribute("value", username);
							
							break;
							
						}
				}
		
		
		
		if(!flag)
		{
			
			request.getRequestDispatcher("/invalidLogin.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("/userLogged.jsp").forward(request, response);
		}
		 //response.sendRedirect("invalidLogin.jsp");
					
		
		
	}
	
		

}
