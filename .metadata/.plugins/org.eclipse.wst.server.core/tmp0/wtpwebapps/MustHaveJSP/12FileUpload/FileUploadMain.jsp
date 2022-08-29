<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FileUpload</title>
<script>
	function validateForm(form) {
		if(form.name.value == "") {
			alert("작성자를 입력하세요.");
			form.name.focus();
			return false;
		}
		if(form.title.value == "") {
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		}
		if(form.attachedFile.value == "") {
			alert("첨부파일은 필수 입력입니다.");
			return false;
		}
	}
</script>
</head>
<body>
	<h3>파일 업로드</h3>
	<span style="color: red;">${errorMessage }</span>
	<form name="fileForm" method="post" enctype="multipart/form-data"
		action="UploadProcess.jsp" onsubmit="return validateForm(this);">
		<div class="input-group input-group-sm mb-3">
			<span class="input-group-text" id="inputGroup-sizing-sm">작성자</span>
			<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="name" value="머스트헤브" />
		</div>
		<div class="input-group input-group-sm mb-3">
			<span class="input-group-text" id="inputGroup-sizing-sm">제목</span>
			<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="name" name="title" />
		</div>
		카테고리(선택사항) :
		<div class="form-check">
			
		  <input class="form-check-input" type="checkbox" name="cate" value="사진" id="flexCheckDefault" checked>
		  <label class="form-check-label" for="flexCheckDefault">
		    	사진
		  </label>
		 </div>
		 	<div class="form-check">
		  <input class="form-check-input" type="checkbox" name="cate" value="과제" id="flexCheckChecked">
		  <label class="form-check-label" for="flexCheckChecked">
		   	 	과제
		  </label>
		  </div>
		  	<div class="form-check">
	   	  <input class="form-check-input" type="checkbox" name="cate" value="워드" id="flexCheckChecked">
		  <label class="form-check-label" for="flexCheckChecked">
		   	 	워드
		  </label>
		  </div>
		  	<div class="form-check">
		  <input class="form-check-input" type="checkbox" name="cate" value="음원" id="flexCheckChecked">
		  <label class="form-check-label" for="flexCheckChecked">
		   	 	음원
		  </label>
		  </div>
		</div>

			첨부파일 : <input type="file" name="attachedFile" /><br>
			<input type="submit" value="전송하기" />
	</form>
</body>
</html>