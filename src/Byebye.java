

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.realestate.dao.CityDaoJDBC;
import com.edu.realestate.model.City;


/**
 * Servlet implementation class Byebye
 */
@WebServlet("/Byebye")
public class Byebye extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Byebye() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		CityDaoJDBC cityDao = new CityDaoJDBC();
		ArrayList<City> listC = (ArrayList<City>) cityDao.readAll();
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		pw.print("<h1>LIST CTITES</h1>");
//		for (int i=0; i < listC.size(); i++)
//			pw.print("<p>"+listC.get(i)+"</p>");
		
		listC.forEach((city) -> pw.print("<p>"+city+"</p>"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		pw.print("Bye from a POST method");
	}

}
