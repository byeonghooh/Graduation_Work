<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="mgr" class="bebemamma.MemberMgr"/>
<%@ page import="bebemamma.MemberBean" %>

<%

	MemberBean memBean = new MemberBean();
	memBean.setMemId(request.getParameter("id"));
	memBean.setPwd(request.getParameter("pwd"));
	memBean.setMemName(request.getParameter("mem_name"));
	memBean.setMemGender(request.getParameter("mem_gender"));
	memBean.setBabyName(request.getParameter("baby_name"));
	memBean.setBabyGender(request.getParameter("baby_gender"));
	memBean.setBabyMonth(request.getParameter("age"));
	memBean.setBabyHeight(request.getParameter("height"));
	memBean.setBabyWeight(request.getParameter("weight"));
	memBean.setSkinproblem(request.getParameter("skin"));
	memBean.setAllergy(request.getParameterValues("allergy"));
	
	
	boolean result = mgr.insertMember(memBean);
	String msg = "회원가입에 실패하였습니다.";
	String location = "signup.jsp";
	if(result){
		msg = "회원가입을 하였습니다.";
		location = "login.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>