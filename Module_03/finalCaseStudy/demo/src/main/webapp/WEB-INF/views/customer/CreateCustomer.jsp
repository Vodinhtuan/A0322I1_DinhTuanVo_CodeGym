<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/09/2022
  Time: 7:52 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Customer</title>
    <jsp:include page="/WEB-INF/views/layout/header.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/layout/page-loader.jsp" />
<jsp:include page="/WEB-INF/views/layout/navbar.jsp" />
<jsp:include page="/WEB-INF/views/layout/sidebar.jsp" />
<section class="content">
    <div class="container-fluid">
        <!-- Vertical Layout -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>Add new Customer list</h2>
                    </div>
                    <div class="body table-responsive">
                        <a href="/product?action=create" class="btn btn-primary btn-custom">
                            <i class="fa fa-plus-circle" aria-hidden="true"></i> Add new product
                        </a>
                        <table class="table table-striped" id="dataTable-listStudent">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Date release</th>
                                <th>Quantity</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${products}" varStatus="item">
                                <tr>
                                    <td>${item.count }</td>
                                    <td>${item.current.id}</td>
                                    <td>${item.current.name}</td>
                                    <td>${item.current.price}</td>
                                    <td><fmt:formatDate value="${item.current.dateRelease}" pattern="dd/MM/yyyy" /> </td>
                                    <td>${item.current.quantity}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/views/layout/script.jsp" />
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>
