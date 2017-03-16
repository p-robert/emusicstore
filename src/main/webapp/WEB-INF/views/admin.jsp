<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container"></div>
    <div class="page-header">
        <h1>Add Product</h1>

        <p class="head">Fill the below information to add product!</p>
    </div>

    <form:form action="#" method="post" commandName="product">
    <div class="form-group" >
        
        <label for="name">Name</label>
        <form:input path="productName" id="name" class="form:Control" />


    </div>


    </form:form>


    <%@include file="/WEB-INF/views/template/footer.jsp"%>