<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>free board</title>
	<!-- Include Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
		.card {
			height: 400px;
			display: flex;
			flex-direction: column;
		}
		.card-body {
			display: flex;
			flex-direction: column;
			padding: 1rem;
		}

		.content-scrollable {
			overflow-y: auto;
			margin-bottom: 1rem;
		}

		.d-flex {
			flex-wrap: wrap;
			align-items: center;
			justify-content: space-between;
			flex-shrink: 0;
		}

		.d-flex > * {
			flex-shrink: 1;
			margin: 0.25rem;
		}

	</style>
</head>
<body>

<div class="container mt-4">
	<h1 class="text-center mb-4">책 벌래게시판</h1>
	<div class="text-center mb-4">
		<a href="add" class="btn btn-primary">Add New Post</a>
	</div>
	<div class="row">
		<c:forEach items="${list}" var="u">
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<div class="card-header">
							${u.category}
					</div>
					<div class="card-body">
						<h5 class="card-title">${u.title}</h5>
						<div class="content-scrollable">
							<p class="card-text">${u.content}</p>
						</div>
						<div class="d-flex justify-content-between align-items-center mt-auto">
							<small class="text-muted">${u.regdate}</small>
							<div class="btn-group">
								<a href="view/${u.seq}" class="btn btn-sm btn-outline-secondary">View</a>
								<a href="editform/${u.seq}" class="btn btn-sm btn-outline-secondary">Edit</a>
								<button onclick="delete_ok('${u.seq}')" class="btn btn-sm btn-outline-danger">Delete</button>
							</div>
						</div>
					</div>
					<div class="card-footer text-muted">
						Recommended by: ${u.recommendname} <br>
						Contact: ${u.recommendemail} <br>
						Publishdate:${u.publishdate}
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

<script>
	function delete_ok(id) {
		let a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>

</body>
</html>
