<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<style>
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: silver;
   padding-left: 650px;
    border-radius: 5em;
    
}
body {
    font-family: 'Ubuntu', sans-serif;
        background: linear-gradient(to right, orange, #E040FB);
          
      }

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
#myTable {
  border-collapse: collapse; /* Collapse borders */
  width: 100%; /* Full-width */
  border: 1px solid #ddd; /* Add a grey border */
  font-size: 18px; /* Increase font-size */
}
#myTable th, #myTable td {
  text-align: left; /* Left-align text */
  padding: 12px; /* Add padding */
}

#myTable tr {
  /* Add a bottom border to all table rows */
  border-bottom: 1px solid #ddd;
}
#myTable tr.header, #myTable tr:hover {
  /* Add a grey background color to the table header and on hover */
  background-color: #f1f1f1;
  }
</style>
<script>
 function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
</head>
<body>

<h1 align=center>Page is Dedicated to Admin</h1>

<br>

<ul>
  <li><a href="sellerhome">Home</a></li>
  <li><a class="active"  href="viewallemps">View All</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br><br>

<h3 align=center><u>View All Products</u></h3>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
<table align=center border=2 id="myTable">

<tr class="header">

<th>ID</th>
<th>productname</th>
<th>category</th>
<th>cost</th>
<th>designation</th>
<th>productlink</th>
<th>image</th>
<th>Action</th>


</tr>

<c:forEach items="${productlist}" var="product">

<tr>
<td> <c:out value="${product.id}"></c:out>   </td>
<td> <c:out value="${product.productname}"></c:out> </td>
<td> <c:out value="${product.category}"></c:out>   </td>
<td> <c:out value="${product.cost}"></c:out> </td>
<td> <c:out value="${product.designation}"></c:out> </td>
<td><a href='<c:url value='${product.productlink}'></c:url>'>Click Here</a></td>
<td><img src="productimg?id=<c:out value='${product.id}' ></c:out>" width="40%" height="30%"></td>

<td> 
<a href='<c:url value='deleteproduct?id=${product.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewproductbyid?id=${product.id}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>