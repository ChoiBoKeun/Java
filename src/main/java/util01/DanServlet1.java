package util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DanServlet1
 */
@WebServlet("/DanServlet1")
public class DanServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DanServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest req, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String dan=req.getParameter("dan");
		String outstr="";
		if(dan==null) {
			outstr="단이 없습니다. 단을 입력하세요";
		}else {
			int num1=Integer.parseInt(dan);
			
			for(int i=1; i<10; i++) {
				outstr+=num1+"x"+i+"="+(num1*i)+"<br>";
			}
		}
		outstr="<html><head><title>구구단</title></head><body>"+outstr+"</body></html>";
		
		PrintWriter out=response.getWriter();
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
