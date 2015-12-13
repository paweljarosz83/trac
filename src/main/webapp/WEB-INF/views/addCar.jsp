<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TRAC::Total Rent a Car</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css" />
	<link rel="stylesheet" href="<spring:url value="/resources/css/global.css"/>" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>
	
		<link rel="stylesheet"href="<spring:url value="/resources/css/addCar.css"/>" type="text/css" />
</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
		
		<spring:url value="/cars/save" var="formUrl"/>
		
			<form:form action="${formUrl}" method="POST" modelAttribute="car">
			<form:errors path="*" cssClass="alert alert-danger" element="div"/>
			<!--form action="<spring:url value="/car/add"/>" method="post" class="col-md-8 col-md-offset-2"-->
			
				<div class="form-group">
					<label for="car-model">
						<spring:message code="addCar.form.model.label"/>
					</label>
					<form:input id="model" path="model" cssClass="form-control" />
					<form:errors path="model"/>
				</div>
				<div class="form-group" >
					<label for="make">
						<spring:message code="addCar.form.make.label"/>
					</label>
					<form:input id="make" path="make" cssClass="form-control"/>
					<form:errors path="make"/>
				</div>
				<div class="form-group">
					<label for="registration">
						<spring:message code="addCar.form.registration.label"/>
					</label>
					<form:input id="registration" path="registration" cssClass="form-control"/>
					<form:errors path="registration"/>
				</div>
				
				
				
				<div class="form-group">
					<label for="power">
						<spring:message code="addCar.form.engine.power.label"/>
					</label>
					<form:input id="power" cssClass="form-control" path="engine.power"/>
						<form:errors path="power"/>
				</div>
				<div class="form-group">
					<label for="trunkSize">
						<spring:message code="addCar.form.trunk.label"/>
					</label>
					<form:input id="trunk" path="trunk" cssClass="form-control"/>
						<form:errors path="trunk"/>
				</div>
				<div class="form-group">
					<label for="fuel">
						<spring:message code="addCar.form.fuel.label"/>
					</label>
					<form:select path="fuel" items="${fuelOptions}" cssClass="selectpicker"/>
						<form:errors path="fuel"/>
				</div>
				
				
				
				<div class="form-group">
					<label for="kilometers">
						<spring:message code="addCar.form.kilometers.label"/>
					</label>
					<form:input id="kilometers" path="kilometers" cssClass="form-control"/>
						<form:errors path="kilometers"/>
				</div>
				
				
				
								
				<div class="form-grup">
					<label for="color">
						<spring:message code="addCar.form.color.label"/>
					</label>
					<form:input id="color" path="color" cssClass="form-control"/>
						<form:errors path="color"/>
				</div>		
			</br>
				<div class="form-group">
					<label for="drive">
						<spring:message code="addCar.form.drive.label"/>
					</label>
					<form:select path="drive" items="${driveOptions}" cssClass="selectpicker"/>
				</div>				
				<div class="form-group">
					<label for="transmission">
						<spring:message code="addCar.form.transmission.label"/>
					</label>
					<form:select path="transmission" items="${transmissionOptions}" cssClass="selectpicker"/>
				</div>
				<div class="form-group">
					<label for="body">
						<spring:message code="addCar.form.body.label"/>
					</label>
					<form:radiobuttons path="body" items="${radios}"/>
				</div>
				<div class="form-group">
					<label for="equipments">
						<spring:message code="addCar.form.equipment.label"/>
					</label>
					<form:checkboxes path="equipments" id="equipments" items="${equipments}"/>
				</div>
				
				<div class="form-group">
					<label for="description">
						<spring:message code="addCar.form.description.label"/>
					</label>
					<form:textarea id="description" path="description" class="form-control"/>
				</div>
				
				<div class="form-grup">
					<label for="color">
						<spring:message code="addCar.form.price.label"/>
					</label>
					<form:input id="price" path="price" cssClass="form-control"/>
						<form:errors path="price"/>
				</div>	
			</br>
			
				<button type="submit" class="btn btn-default">
					<spring:message code="addCar.form.submit.label"/>
				</button>
			</form:form>
			<br/>
			<br/>
		</div>
	</div>
	 



	
	
	<section>
    	<div class="jumbotron">
      		<div class="container">
        		<h1>Cars</h1>
        		<p>Add new car</p>
      		</div>
    	</div>
 	</section>
    
  
  
</body>
</html>
