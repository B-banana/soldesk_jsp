<%@ tag body-content="scriptless" language="java" pageEncoding="UTF-8"%>
<%@ tag import="jspbook.ch10.Product" %>
<%@ attribute name="bgcolor" %>
<%@ attribute name="border" %>
<%@ attribute name="width" %>

<jsp:useBean id="product" class="jspbook.ch10.Product"></jsp:useBean>

a	

<h2>Body</h2>
<table border="${border }" bgcolor="${bgcolor }" width="${width }">
<%
	for (String item : product.getProductList()) {
		out.println("<tr><td>" + item + "</td></tr>");
	}


%>
</table>

<!-- body-content="scriptless" : 본체의 내용을 사용 -->