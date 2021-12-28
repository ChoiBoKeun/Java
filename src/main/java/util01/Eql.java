package util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Eql
 */
@WebServlet("/Eql")
public class Eql extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Eql() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String str1=req.getParameter("a");
		String str2=req.getParameter("b");
		String str3=req.getParameter("c");
		int a=Integer.parseInt(str1);
		int b=Integer.parseInt(str2);
		int c=Integer.parseInt(str3);
		PrintWriter out=response.getWriter();
		double q1=Math.sqrt(Math.pow(b, 2)-4*a*c);
		String outstr="<html><head><title>Eql1</title></head><body>"+
				"X1 ="+(-b+q1)/(2*a)+"<br>"+"X2 ="+(-b-q1)/(2*a)+"<br>"+"</body></html>";
	out.println(outstr);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
