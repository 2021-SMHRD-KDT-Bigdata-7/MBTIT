<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.u_CommunityVO"%>
<%@page import="Model.DAO"%> 
<!DOCTYPE html>
<html>
<head>
<title>IT_job - Grea:it</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
	table{
		width: 1000px;
		border: 1px solid #444444;
	}
	tr{
		border: 1px solid #444444;
	}
	#head_tr{
		background-color: black;
		text-align: center;
		color: white;
	}
	.main_td{
		text-align:center;
		color: black;
	}
	.main_a{
		color: black;
	}

</style>		
</head>
<body>

									<!-- Sidebar -->
										<section>
											<h3>�ٸ� Ŀ�´�Ƽ�� �̵��ϱ�</h3>
											<ul class="links">
												<li><a href="c_Community.jsp">���� �Խ���</a></li>
												<li><a href="c_Study_Community.jsp">���͵� Ŀ�´�Ƽ</a></li>
											</ul>
										</section>

								</div>
							</div>
							<div class="col-8  col-12-narrower imp-narrower">
								<div id="content">

									<!-- Content -->

										<article>
<%
u_CommunityVO ucvo = null;
if(session.getAttribute("cvo") !=null){
	ucvo = (u_CommunityVO)session.getAttribute("ucvo");
}
DAO dao = new DAO();
ArrayList<u_CommunityVO> arr = dao.u_Community();
%>										
			<div id="board">
			<h1>�߰��ŷ��Խ���</h1>
				<table>
					<tr id="head_tr" class="cm_tr">
						<td class="cm_td">��ȣ</td>
						<td class="cm_td">����</td>
						<td class="cm_td">����</td>
						<td class="cm_td">�ۼ���</td>
						<td class="cm_td">�ð�</td>
						<td class="cm_td">��ȸ��</td>
					</tr>
					<%for(int i=0;i<arr.size();i++){%>
					<%String result = arr.get(i).getREG_DATE().substring(5,11);%>
					<tr class="main_tr">
						<td class="main_td"><a class="main_a" href="u_c_Communityview?num=<%=arr.get(i).getUSED_SEQ()%>"><%=arr.get(i).getUSED_SEQ()%></a></td>
						<td class="main_td"><a class="main_a" href="u_c_Communityview?num=<%=arr.get(i).getUSED_SEQ()%>"><%=arr.get(i).getUSED_SUBJECT()%></a></td>
						<td class="main_td"><a class="main_a" href="u_c_Communityview?num=<%=arr.get(i).getUSED_SEQ()%>"><%=arr.get(i).getUSED_PRICE()%></a></td>
						<td class="main_td"><a class="main_a" href="u_c_Communityview?num=<%=arr.get(i).getUSED_SEQ()%>"><%=arr.get(i).getM_ID()%></a></td>
						<td class="main_td"><a class="main_a" href="u_c_Communityview?num=<%=arr.get(i).getUSED_SEQ()%>"><%=result%></a></td>
						<td class="main_td"><a class="main_a" href="u_c_Communityview?num=<%=arr.get(i).getUSED_SEQ()%>"><%=arr.get(i).getUSED_CNT()%></a></td>
					</tr> 	
					<% }%>
				</table>
				<!--������ �ѱ��  -->
		<%-- <%if (pageNumber != 1) {%>
			<a href="c_Community.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arrow-left">����</a>
		<%} if (bbsDAO.nextPage(pageNumber + 1)) {%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arrow-left">����</a>
		<%}%> --%>
				<form action="search_u_community">
				<select><option value="����">����</option><option value="����">����</option><option value="�ۼ���">�ۼ���</option></select>
				<input type="text"><input class="search_button" type="button" value="�˻��ϱ�">
				<a href="c_Used_Communitywrite.jsp">�ۼ��Ϸ�����</a>
				</form>
			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!-- [if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif] -->
			<script src="assets/js/main.js"></script>
										</article>

								</div>
							</div>
						</div>
					</div>
				</section>
		</div>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>