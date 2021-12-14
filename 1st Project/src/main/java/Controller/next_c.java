package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommunityVO;
import Model.DAO;
@WebServlet("/next_c")
public class next_c extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num=Integer.parseInt(request.getParameter("num"));
		DAO dao=new DAO();
		int lognum = dao.c_next_page(num);
		if(lognum>0){
            response.sendRedirect("c_Communityview?num="+lognum);
            System.out.println("���� ����");
         }else{
            response.sendRedirect("c_Communityview.jsp");
            System.out.println("���� ����");
         } 	  
     }    
}