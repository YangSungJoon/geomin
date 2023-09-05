<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/study_group_add.css">
</head>
<%@include file = "../common/header.jsp" %>
<body>
userId : ${userId} <br>
pageDto : ${pageDto } <br>
totalCnt : ${totalCnt } <br>
	<input type="text" name="user_id" value="${userId}"><br>



<div class = "intro-box">

        
        
        
        <div class = "left-sideBar">
            <ul>
                <li class = "site-intro"><a href = "/group/groupAdd?user_id=${userId}" id = "intro-hover">학습그룹 등록</a></li>
                <li class = "guide"><a href = "/group/groupApproval?user_id=${userId}" id = "guide-hover">그룹가입 승인</a></li>
                <li class = "guide"><a href = "/group/myGroup?user_id=${userId}" id = "guide-hover">나의 그룹</a></li>
                <li class = "guide"><a href = "/homework_t/homework_add?user_id=${userId }&groupyn=Y" id = "guide-hover">숙제 전송</a></li>
                <li class = "guide"><a href = "/homework_t/homework_evaluation?user_id=${userId }" id = "guide-hover">숙제 평가</a></li>
            </ul>
        </div>
        
   <form action="groupAdd" method="post" >

        <div class = "group_add_box">

            <div><h1>정보 입력</h1></div>
            <hr>
            <div class = "left_content">
				<p>콘텐츠 명<span>*</span></p>
      		   <select name="content_id">
				<c:forEach items="${option_content_id }" var="li" varStatus="status">
				   	<option  value="${li.content_id }">${li.content_name }</option>
			    </c:forEach>
			   </select>
            
                <p>그룹명<span>*</span></p>
                <input type="text" name="group_name">
                <p>그룹인원<span>*</span></p>
                <input type="text" name="group_personnel" >
                <p>학습기간<span>*</span></p>
                 <input type="date" name="learning_start"> ~ <input type="date" name="learning_end">

                <div>
                    <button type = "submit" id = "add_button">학습그룹 등록</button>
                </div>

            </div>
        </div>




	<input type="text" name="user_id_leader" value="${userId}"><br>
	

    </form>
    </div>
    
    
</body>
<%@include file = "../common/footer.jsp" %>
</html>