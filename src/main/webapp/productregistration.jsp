<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: green;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}


ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: lightgreen;
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
</style>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>signup</title>
</head>
<body>

    <img src="img/loader.gif" class="loader" alt="">

    <div class="container">
        <img src="img/icon.webp" class="logo" alt="">
        <div>
            <h2 align=center>product registration</h2>
            


<br>
<span class="blink">
<h3 align=center style="color: green"><c:out value="${msg}"/></h3>
</span>
<form action="insertproduct" method="post" enctype="multipart/form-data">

<table align=center>

<tr>
<td><label>Category</label></td>
<td>
<select name="category" required="required">
<option value="-1">---category---</option>
<option value="Mobile">Mobile</option>
<option value="TV">TV</option>
<option value="Buds">Buds</option>
<option value="Cotton Top">Cotton Top</option>
<option value="Jeans Pants">Jeans Pants</option>
<option value="Tshirt">T-shirt</option>
<option value="Shirt">Shirt</option>
</select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Name</label></td>
<td><input type="text" name="productname" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Description</label></td>
<td>
<textarea name="designation"></textarea>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Cost</label></td>
<td><input type="number" name="cost" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Link</label></td>
<td><input type="text" name="productlink" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Image</label></td>
<td><input type="file" name="productimage" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form>
           
            
        </div>
        <a href="signup" class="link">You didn't have account? Register in here</a><br>
        <a href="index.jsp" class="link">You want to go to home? click me</a><br>
        <a href="sellerhome" class="link">You want to go to seller home? click me</a>
        
    </div>

</body>
</html>