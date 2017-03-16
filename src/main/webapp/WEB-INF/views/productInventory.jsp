<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container"></div>
    <div class="page-header">
        <h1>All Products</h1>

        <p class="head">This is product inventory page</p>
    </div>

    <table class="table table-striped table-hover">
        <thead>
        <tr class="bg-success">
            <th>Photo Thumb</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Condition</th>
            <th>Price</th>
            <th></th>

        </tr>

        <c:forEach items="${products}" var="product">
            <tr>
                <td><img src="" alt="image"/></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice} USD</td>
                <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />" > <spam class="glyphicon glyphicon-info-sign"></spam> </a></td>
            </tr>
        </c:forEach>
        </thead>

    </table>

    <a href="<spring:url value="/admin/productInventory/addProduct" />"  class="btn btn-primary">Add Product</a>
    <%@include file="/WEB-INF/views/template/footer.jsp"%>
