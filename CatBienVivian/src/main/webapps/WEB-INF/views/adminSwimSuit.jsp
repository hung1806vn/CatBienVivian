<%@ include file="adminHeader.jsp"%>
<%@ page session="true" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="page-wrapper">
	<div class="header">
		<h1 class="page-header">
			Tables Page <small>Responsive tables</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Data</li>
		</ol>

	</div>

	<div id="page-inner">

		<div class="row">
			<div class="col-md-12">
				<!-- Advanced Tables -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="btn btn-success" href="<%=contextPath%>/admin/addSwimSuit">Thêm
							đồ bơi</a>
					</div>

					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<!-- <th>Id</th> -->
										<th>Tên</th>
										<th>Mô tả</th>
										<th>Nhãn hiệu</th>
										<th>Trạng thái</th>
										<th>Giá</th>
										<th>Số lượng</th>
										<!-- <th>Giới tính </th> -->
										<!-- <th>Độ tuổi </th> -->
										<th>Xử lý</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="swimsuit" items="${swimsuits}">
										<tr class="odd gradeA">
											<%-- <td>${swimsuit.clothesID }</td> --%>
											<td>${swimsuit.clothesName }</td>
											<td>${swimsuit.clothesDescription }</td>
											<td>${swimsuit.clothesBranch }</td>
											<td>${swimsuit.clothesStatus }</td>
											<td>${swimsuit.clothesPrice }</td>
											<td>${swimsuit.clothesQuantity }</td>
											<%-- <td>${swimsuit.clothesGender }</td> --%>
											<%-- <td>${swimsuit.clothesAge }</td> --%>
											<td><a class="btn btn-primary"
												href="<%=contextPath%>/admin">Chỉnh sửa</a> <a
												class="btn btn-danger"
												href="<%=contextPath%>/admin/deleteClothes/${swimsuit.clothesID}.action">Xoá</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>
				<!--End Advanced Tables -->
			</div>
		</div>
		<%@ include file="adminFooter.jsp"%>