<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

<title>책 등록</title>
<script type="text/javascript">
	function send(form) {
		if(form.title.value=="") {
			alert("책제목을 입력하세요");
			form.title.focus();
			return false;
		} else if(form.publisher.value.length< 1) {
			alert("출판사를 입력하세요");
			form.publisher.focus();
			return false;
		} else if(!form.price.value) {
			alert("가격을 입력하세요");
			form.price.focus();
			return false;
		}
	}

</script>

</head>
<body>
<div class="divForm">
<form name="frmWrite" method="post" action='<c:url value= "/book/write.do" />' onsubmit="return send(this)">
 <fieldset>
	<legend>책 등록하기</legend>
        <div class="firstDiv">
            <label for="title">제목</label>
            <input type="text" id="title" name="title"  />
        </div>
        <div>
            <label for="publisher">출판사</label>
            <input type="text" id="publisher" name="publisher" />
        </div>
        <div>
            <label for="price">가격</label>
            <input type="text" id="price" name="price" />
        </div>
        <div class="center">
            <input type = "submit" value="등록"/>
            <input type = "Button" value="글목록" onclick="location.href	='<c:url value= '/book/list.do' />'" />         
        </div>
    </fieldset>
</form>
</div>   

              
</body>
</html>