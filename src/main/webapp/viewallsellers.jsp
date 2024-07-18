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

</head>
<body>

<h1 align=center>Page is Dedicated to Admin</h1>

<br>

<ul>
  <li><a href="adminhome">Home</a></li>
  <li><a class="active"  href="viewallcustomers">View All Customers</a></li>
    <li><a class="active"  href="viewallsellers">View All sellers</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br><br>

<h3 align=center><u>View All Sellers</u></h3>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
<table align=center border=2 id="myTable">

<tr class="header">

<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Company Name</th>
<th>Location</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>

</tr>

<c:forEach items="${sellerlist}" var="seller">

<tr>

<td> <c:out value="${seller.id}"></c:out>   </td>
<td> <c:out value="${seller.name}"></c:out>   </td>
<td> <c:out value="${seller.gender}"></c:out>   </td>
<td> <c:out value="${seller.companyname}"></c:out>   </td>
<td> <c:out value="${seller.location}"></c:out>   </td>
<td> <c:out value="${seller.emailid}"></c:out>   </td>
<td> <c:out value="${seller.username}"></c:out>   </td>
<td> <c:out value="${seller.contactno}"></c:out>   </td>
<td> 

<a href='<c:url value='deleteseller?id=${seller.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewsellerbyid?id=${seller.id}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>