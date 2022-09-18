<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/09/2022
  Time: 9:45 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add new product</h1>
<c:if test="${error != null}">
    <h2 style="color: red">${error}</h2>
</c:if>

<a href="/product">Return List</a>
<form action="/product" method="post">
    <table border="1">
        <tr>
            <td>ID</td>
            <td>${product.id}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="${product.name}"/></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><input type="text" name="description" value="${product.description}"/></td>
        </tr>
        <tr>
            <td>Manufacture</td>
            <td><input type="txt" name="manufacture" value="${product.manufacture}"/></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="number" name="price" value="${product.price}"/></td>
        </tr>
        <tr>
            <td>
                <input type="reset" value="Reset" />
            </td>
            <td>
                <input type="submit" value="Submit" />
            </td>
        </tr>
    </table>
    <input type="hidden" name="action" value="update" />
    <input type="hidden" name="id" value="${product.id}" />
</form>
</body>
</html>
