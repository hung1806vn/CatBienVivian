<%@ include file="adminHeader.jsp"%>
<%@ page session="true" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="page-wrapper">
	<div class="header">
		<h1 class="page-header">
			Forms Page <small>Best form elements.</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li><a href="#">Forms</a></li>
			<li class="active">Data</li>
		</ol>

	</div>

	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Basic Form Elements</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-6">
								<form action="<%=request.getContextPath()%>/admin/addSwimSuit"
									method="post" role="form">
									<div class="form-group">
										<label for="title">Swim Suit Name</label> <input
											class="form-control" placeholder="Enter name" name="name">
									</div>
									<div class="form-group">
										<label>Swim Suit Description</label>
										<textarea class="form-control" name="description" rows="4"></textarea>
									</div>
									<div class="form-group">
										<label for="title">Swim Suit Branch</label> <input
											class="form-control" placeholder="Enter branch" name="branch">
									</div>
									<div class="form-group">
										<label for="title">Swim Suit Status</label> <input
											class="form-control" placeholder="Enter status" name="status">
									</div>
									<div class="form-group">
										<label for="title">Swim Suit Price</label> <input
											class="form-control" placeholder="Enter price" name="price">
									</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<label>Swim Suit Gender</label> <label class="radio-inline">
										<input type="radio" name="optionRadioGender"
										id="optionsRadiosInline1" value="option1" checked="">Male
									</label> <label class="radio-inline"> <input type="radio"
										name="optionRadioGender" id="optionsRadiosInline2"
										value="option2">Female
									</label>
								</div>
								<div class="form-group">
									<label>Swim Suit Age</label> <label class="radio-inline">
										<input type="radio" name="optionsRadiosInline"
										id="optionsRadiosInline1" value="option1" checked="">Children
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadiosInline" id="optionsRadiosInline2"
										value="option2">Adult
									</label>
								</div>
								<div class="form-group">
									<label>Swim Suit Color</label>
									<div class="checkbox">
										<label> <input type="checkbox" value="">Red
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="">green
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="">Blue
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="">White
										</label>
									</div>
								</div>
								<div class="form-group">
									<label>Swim Suit Size</label>
									<div class="checkbox">
										<label> <input type="checkbox" value="">XS
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="">S
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="">L
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" value="">XL
										</label>
									</div>
								</div>
								<div class="form-group">
									<label for="title">Decoration image</label> <input
										class="form-control" placeholder="Enter image" name="image"">
								</div>
								<button type="submit" class="btn btn-default">Add</button>
							</div>
							</form>
						</div>
						<!-- /.col-lg-12 (nested) -->
					</div>
					<!-- /.row (nested) -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>

	<%@ include file="adminFooter.jsp"%>