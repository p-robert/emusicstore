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

    <div class="form-group">
        <label for="category">Category</label>
        <label class="checkbox-inline" ><form:radiobutton path="productCategory" id="category" value="instrument"></form:radiobutton>Instrument</label>
        <label class="checkbox-inline" ><form:radiobutton path="productCategory" id="category" value="record"></form:radiobutton>Record</label>
        <label class="checkbox-inline" ><form:radiobutton path="productCategory" id="category" value="accessory"></form:radiobutton>Accessory</label>
    </div>

    <div class="form-group" >
        <label for="price">Product Price</label>
        <form:input path="productPrice" id="price" class="form:Control" />
    </div>

    <div class="form-group" >
        <label for="description">Description</label>
        <form:input path="productDescription" id="description" class="form:Control" />
    </div>
    </form:form>

<%--    <div class="form-group">
        <label for="productCondition">Condition</label>
        <label class="checkbox-inline" ><form:radiobutton path="productCondition" id="productCondition" value="new"></form:radiobutton>New</label>
        <label class="checkbox-inline" ><form:radiobutton path="productCondition" id="productCondition" value="used"></form:radiobutton>Used</label>
    </div>--%>
    <div class="form-group">
        <label for="status">Status</label>
        <label class="checkbox-inline" ><form:radiobutton path="productStatus" id="status" value="active"></form:radiobutton>Active</label>
        <label class="checkbox-inline" ><form:radiobutton path="productStatus" id="status" value="inactive"></form:radiobutton>Inactive</label>
    </div>

    <div class="form-group">
        <label for="unitInStock">Unit In Stock</label>
        <form:input path="unitInStock" id="unitInStock" class="form:Control" />

    </div>

    <div class="form-group">
        <label for="manufacturer">Manufacturer</label>
        <form:input path="manufacturer" id="manufacturer" class="form:Control" />

    </div>



    <%@include file="/WEB-INF/views/template/footer.jsp"%>
