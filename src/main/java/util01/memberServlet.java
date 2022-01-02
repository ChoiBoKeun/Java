package util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class memberServlet
 */
@WebServlet("/memberServlet")
public class memberServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      String rName=req.getParameter("realname");
      String userid=req.getParameter("userid");
      String pass=req.getParameter("passcode");
      String pass1=req.getParameter("passcode1");
      String mobile=req.getParameter("mobile");
      
      String outstr="<html><head><title>개인정보</title></head><body>";
      String[] arInterest = req.getParameterValues("interest");
      String[] arGender = req.getParameterValues("gender");
      outstr+="실명: "+rName+"<br>아이디: "+userid+"<br>비밀번호: "+pass+"<br>비밀번호확인: "+
      pass1+"<br>모바일번호: "+mobile+"<br>";
//      if(arInterest == null || arGender == null) {
//         return;
//      }
      if(arGender == null) {
         outstr+="선택된게 없습니다.";
      } else {
         outstr+="성별:";
         for(int i = 0; i < arGender.length; i++) {
            outstr+=arGender[i]+"<br>";
         }
      } 
      if(arInterest==null) {
         outstr+="선택된게 없습니다.";
      } else {
         outstr+="관심분야:<br>";
         for(int i = 0; i < arInterest.length; i++) {
            outstr+=arInterest[i]+"<br>";
         }
      }
      outstr+="</body></html>";
      PrintWriter out=response.getWriter();
      out.println(outstr);
   }

}