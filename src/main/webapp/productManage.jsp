
<%--
    Document   : productManage
    Created on : Jul 6, 2023, 9:42:51 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="x-windows-949"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product Management</title>
  <!-- ======= Styles ====== -->
  <link rel="stylesheet" href="staff/assets/css/style.css">
  <link rel="stylesheet" href="staff/assets/css/productStyle.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>

</head>       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css" />
<script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,600;0,700;0,800;1,400;1,500&display=swap"
        rel="stylesheet">\
<style>
  .btn-add-blog {
    margin-right: 100px;
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
  }

  .btn-add-blog:hover {
    background-color: #45a049;
  }
</style>
<body>
<!-- =============== Navigation ================ -->
<div class="container">
  <jsp:include page="header.jsp"></jsp:include>

  <!-- ========================= Main ==================== -->
  <div class="main">
    <div class="topbar">

      <form>
        <div class="form-container">
          <label for="search">
            <input type="text" name="search" placeholder="Search here" value="${searchParam}"><!-- comment -->
            <input type="hidden" name="page" value="${currentPage}">

          </label>

          <label for="category">Category:</label>
          <select name="category" id="category">
            <option value="">All</option>
            <c:forEach items="${category}" var="c">
              <option value="${c.cid}" <c:if test="${param.category == c.cid}">selected</c:if>>${c.cname}</option>
            </c:forEach>
            <!-- Add more options as needed -->
          </select>



          <button type="submit">Apply</button>
        </div>


        <!-- Add other form fields and buttons as needed -->

      </form>

      <button class="btn-add-blog">Add new Product</button>
    </div>

    <!-- ======================= Cards ================== -->


    <!-- ================ Order Details List ================= -->
    <div class="details">
      <div class="recentOrders">
        <div class="cardHeader">
          <h2>Product Management</h2>

        </div>
        <% String status = request.getParameter("status"); %>

        <!-- Add the following code after the form -->
        <% if ("success".equals(status)) { %>
        <p class="status delivered">Update success</p>
        <% } else if ("failed".equals(status)) { %>
        <p class="status return">Update failed</p>
        <% }%>
        <% if ("addSuccess".equals(status)) { %>
        <p class="status delivered">Add success</p>
        <% } else if ("addFailed".equals(status)) { %>
        <p class="status return">Update failed</p>
        <% }%>
        <table>
          <thead>
          <tr>
            <td>Name</td>
            <td>Price</td>
            <td>image</td>
            <td>Category</td>
            <td>Discount</td>

            <td>Action</td>
          </tr>
          </thead>

          <tbody>
          <c:if test="${empty listP}">
            <tr>
              <td colspan="5" style="text-align: center; color: red"><b>No product found!</b></td>
            </tr>
          </c:if>
          <c:if test="${not empty listP}">
            <c:forEach items="${listP}" var="p">
              <tr>
                <td>${p.name}</td>
                <td>$${p.price}</td>
                <td><img style="height: 50px; width: 50px" src="${p.image}" alt="alt" /></td>
                <td><span class="">${p.cateName}</span></td>
                <td><span class="">${p.discount*100}%</span></td>
                <td>

                  <a href="product-detail?pid=${p.id}" class="btn-edit-blog">
                    <ion-icon name="pencil-sharp"></ion-icon>
                  </a>
                  <button class="delete-button"data-product-id="${p.id}" onclick="confirmDelete(this)">
                    <ion-icon name="trash-outline"></ion-icon>
                  </button>
                </td>
              </tr>
            </c:forEach>
          </c:if>

          </tbody>
        </table>
        <%--paging--%>
        <nav class="mt-3" aria-label="Page navigation example">
          <ul class="pagination">
            <!-- Disable the "Previous" link if on the first page -->
            <c:if test="${currentPage > 1}">
              <li class="page-item">
                <a class="page-link" href="?category=${param.category}&amp;search=${param.search}&amp;page=${currentPage - 1}">Previous</a>
              </li>
            </c:if>

            <!-- Display the page numbers as links -->
            <c:forEach var="pageNum" begin="1" end="${totalPages}">
              <li class="page-item <c:if test='${pageNum == currentPage}'>active</c:if>">
                <a class="page-link" href="?category=${param.category}&amp;search=${param.search}&amp;page=${pageNum}">${pageNum}</a>
              </li>
            </c:forEach>

            <!-- Disable the "Next" link if on the last page -->
            <c:if test="${currentPage < totalPages}">
              <li class="page-item">
                <a class="page-link" href="?category=${param.category}&amp;search=${param.search}&amp;page=${currentPage + 1}">Next</a>
              </li>
            </c:if>
          </ul>
        </nav>
      </div>


      <!-- ================= New Customers ================ -->

      <div id="editModel" class="modal">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Add New Product</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="add-product" method="post">
                <div class="form-group">
                  <label for="recipient-name" class="col-form-label">Name</label>
                  <input type="text" class="form-control" name="name" required="">
                </div>
                <div class="form-group">
                  <label for="recipient-name" class="col-form-label">Description</label>
                  <input type="text" class="form-control" name="description" required="">
                </div>
                <div class="form-group">
                  <label for="recipient-name" class="col-form-label">price</label>
                  <input type="text" class="form-control" name="price" required="">
                </div>
                <div class="form-group">
                  <label for="recipient-name" class="col-form-label">Image</label>
                  <input type="url" class="form-control" name="image" required="">
                </div>
                <div class="form-group">
                  <label for="cateId">Category</label>
                  <select name="cateId">
                    <c:forEach var="cat" items="${category}">
                      <option value="${cat.cid}">${cat.cname}</option>
                    </c:forEach>
                  </select><br/>
                </div>

                <div class="modal-footer">

                  <button  style="background-color: #f44336; color: #fff; padding: 10px 20px; border: none; border-radius: 4px; font-size: 16px; color: white"type="submit" class="btn btn-warning">Add</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>

<!-- =========== Scripts =========  -->

<script>

  var modal = document.getElementById("editModel");


  var editModelButton = document.querySelector(".btn-add-blog");


  var closeSpan = document.getElementsByClassName("close")[0];


  editModelButton.onclick = function () {
    modal.style.display = "block";
  };


  closeSpan.onclick = function () {
    modal.style.display = "none";
  };


  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  };

  function confirmDelete(button) {
    Swal.fire({
      title: 'Confirmation',
      text: 'Are you sure you want to delete this product?',
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes',
      cancelButtonText: 'Cancel'
    }).then((result) => {
      if (result.isConfirmed) {
        deletePost(button);
      }
    });
  }

  function deletePost(button) {
    var postId = button.getAttribute("data-product-id");

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "delete-product?pid=" + encodeURIComponent(postId), true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
      if (xhr.readyState === 4) {
        if (xhr.status === 200) {
          // Product deleted successfully
          Swal.fire({
            title: 'Success',
            text: xhr.responseText,
            icon: 'success'
          }).then(function () {
            window.location.reload();
          });
        } else {
          // Failed to delete the product
          Swal.fire({
            title: 'Error',
            text: xhr.responseText,
            icon: 'error'
          });
        }
      }
    };
    xhr.send("pid=" + encodeURIComponent(postId));
  }


</script>
<script src="assets/js/main.js"></script>
<!-- ====== ionicons ======= -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.0/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.0/dist/sweetalert2.min.css">

</body>
</html>