<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container"></div>
    <div class="page-header">
        <h1>All Products</h1>

        <p class="head">Here is the detail information of the product!</p>
    </div>


    <div class="container">
        <div class="new">
            <div class="col-md-5">
                <img scr="#" alt="image" style="width: 100%;height:300px" />
            </div>

            <div class="col-md-5">
                <h3>${product.productName}</h3>
                <p> ${product.productDescription}</p>
                <p>
                    <strong>Manufacturer</strong>: ${product.productManifacturer}
                </p>
                <p>
                    <strong>Category</strong>: ${product.productCategory}
                </p>
                <p>
                    <strong>Condition</strong>: ${product.productCondition}
                </p>
                <h4>${product.productPrice} USD</h4>
            </div>

    <%@include file="/WEB-INF/views/template/footer.jsp"%>
