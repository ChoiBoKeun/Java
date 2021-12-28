package util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class opServlet
 */
@WebServlet("/opServlet")
public class opServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public opServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		doPost(req, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		 String val1=req.getParameter("value1");
		 String val2=req.getParameter("value2");
		 String operator=req.getParameter("operator");
		 if(val1==null || val2==null || operator==null) {
			 return;
		 }
		 Double v1=Double.parseDouble(val1);
		 Double v2=Double.parseDouble(val2);
		 int result=0;
		 if(operator.equals("+")) { //부모파일에서 쓴 값들을 가져와서 사용 가능
			 result+=v1+v2;
		 } else if(operator.equals("-")) {
			 result+=v1-v2;
		 } else if(operator.equals("*")) {
			 result+=v1*v2;
		 } else if(operator.equals("/")) {
			 result+=v1/v2;
		 } else return;
		 //중간중간 sysout으로 콘솔창에 띄워서 확인해볼것
		 String outstr="<html><head><title>결과값</title></head><body>";
		 outstr+="val1="+val1+"<br>val2="+val2+"<br>operator="+operator+"<br>result="+result+"</body></html>";
		 PrintWriter out=response.getWriter();
			out.println(outstr);
	}

}
