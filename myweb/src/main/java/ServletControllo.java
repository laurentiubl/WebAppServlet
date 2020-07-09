

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Type;
import com.google.gson.reflect.TypeToken;

import myModel.Ordine;
import myModel.checkUserPass;

import com.google.gson.Gson;

/**
 * Servlet implementation class ServletControllo
 */
@WebServlet("/ServletControllo")
public class ServletControllo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
    public ServletControllo() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op = request.getParameter("op");
	    HttpSession session = request.getSession();
	    String user = request.getParameter("account");
	    String pass = request.getParameter("password");
	    
	    
	    if("logout".equals(op)) {
	    	session.invalidate();
	    	forward(request,response,"/login.jsp");
	    }
	    
	
	    if ("login".equals(op) || op==null)
	    {
	    	if(checkUserPass.login(user, pass) == true) {
	    		System.out.println("it s ok..:D");
	    			session.setAttribute("user", user);
	    			session.setMaxInactiveInterval(300);
	    				forward(request,response,"/home.jsp");
	    	} 
	    	else {
	    		System.out.println("non entra");
	    			forward(request,response,"/login.jsp");
	    	}
	    	return;
	     }
	    
  
	    	if(request.getParameter("register_submit") != null) {
	    		 String us = request.getParameter("acc");
	 		     
	    		if(checkUserPass.userExist(us) == true) {
	    		 
	    		System.out.println("User exist, please insert another");
	    			forward(request,response,"/register.jsp");
	    	}else {
	    		String passwordRegister = request.getParameter("pass");
	    		String userNameRegister = request.getParameter("acc");
	    		String emailRegister = request.getParameter("email");
	    		
	    		if(checkUserPass.insertUser(passwordRegister, userNameRegister, emailRegister)== true) {
	    			System.out.println("adding successfully..");
	    				forward(request,response,"/login.jsp");
	    		}else{
	    			System.out.println("we have a problem..");
	    				forward(request,response,"/register.jsp");
	    		}
	    	}
	    }
	    	
	
	     if ("inserimento".equals(op))
	     {
	        Ordine nuovo = new Ordine(0, pass);
	        try
	        {
	          nuovo.setProgressivo(Integer.parseInt(request.getParameter("progressivo")));
	        }
	        catch (Exception e)
	        {
	          forward(request,response,"/inputError.jsp");
	          return;
	        }
	        nuovo.setDescrizione(request.getParameter("descrizione"));
	        nuovo.insert();
	        forward(request,response,"/home.jsp");
	     }
	     else if ("moduloInserimento".equals(op))
	     {
	        forward(request,response,"/moduloInserimento.jsp");
	     }
	     else if ("mostra".equals(op))
	     {
	        Ordine ordine=null;
	        
	        try
	        {
	        
	           ordine=Ordine.load(Integer.parseInt(request.getParameter("progressivo")));
	        }
	        catch (Exception e)
	        {
	          forward(request,response,"/inputError.jsp");
	          return;
	        }
	        request.setAttribute("ordine",ordine);
	        forward(request,response,"/mostra.jsp");
	    }
	    else if ("visualizza".equals(op))
	    {
	    	
	    	   List<Ordine> list = new ArrayList<Ordine>();
		        list =  Ordine.loadd();
		        Gson gson = new Gson();
		        String gsonList = gson.toJson(list);
		        System.out.println(gsonList + "si apre lista in gson");
		        Type typeMyType =  new TypeToken<ArrayList<Ordine>>(){}.getType();
		        ArrayList<Ordine> myObject = gson.fromJson(gsonList,  typeMyType);
		        
		        request.setAttribute("o", myObject);
		        
		        
		        
	        forward(request,response,"/mostraOrdini.jsp");
	    }
	    //else da finire tutti i casi
	  
	    }
	  private void forward(HttpServletRequest request, HttpServletResponse response, String page) 
	       throws ServletException, IOException
	    {
	        ServletContext sc = getServletContext();
	        RequestDispatcher rd = sc.getRequestDispatcher(page);
	        rd.forward(request,response);
	  }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	doGet(request, response);

   	}
	

}
