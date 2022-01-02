package util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PlusServlet01
 * new PlusServlet01(); 
 */
@WebServlet("/PlusServlet01")
public class PlusServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlusServlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		String str1=req.getParameter("num1");
		String str2=req.getParameter("num2");
		if(str1==null || str2==null) {
			return;
		}
		int num1=Integer.parseInt(str1);
		int num2=Integer.parseInt(str2);
		int add=num1*num2;
		String outstr="<html><head><title>곱하기</title></head><body>"+
					   num1+"x"+num2+"="+add+"</body></html>";
		PrintWriter out=response.getWriter(); // System.out -> web browser
		out.println(outstr);
//		out.println("<html><head><title>Plus</title></head>");
//		out.println("<body>");
//		out.println(num1+"+"+num2+"="+add);
//		out.println("</body></html>");
		//<html><head><title>Plus</title></head><body>20+10=30</body></html>
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
