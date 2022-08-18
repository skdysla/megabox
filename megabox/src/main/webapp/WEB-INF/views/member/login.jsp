<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../header.jsp" charEncoding="utf-8" />

<form action="login" method="post">
<h1>로그인</h1>
<label>아이디</label><input type="text" name="id"><br>
<label>비밀번호</label><input type="password" name="pw"><br>
<button type="submit" class="button gray-line small">로그인</button>
</form>

<c:import url="../footer.jsp" charEncoding="utf-8" />