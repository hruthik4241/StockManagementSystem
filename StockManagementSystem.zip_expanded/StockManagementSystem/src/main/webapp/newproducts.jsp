<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>NEW PRODUCTS</title>
    <div class="header">
    
    <h1 align=center>NEW PRODUCTS</h1>
    </div>
</head>
<style>
.header {
  font-family: 'Montserrat';
  position: fixed;
  top: 0;
  left: 0;
  background-color: rgba(0, 0, 0, 0.2);
  height: 64px;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
}

.header::before {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: inherit;
  backdrop-filter: blur(10px);
  z-index: -1;
}
   .card{
    border: 3px solid #000080 ;
  height: 450px;
  width: 430px;
  float: left;
  border-radius: 25px;
  margin-left: 15px;
  margin-top: 75px;
  box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
  padding: 20px;
   }
   .nameu{
   font-size: 25px;
   color: black;
   text-align: center;
   font-family: 'Orbitron', sans-serif;
   
   }
   button{
   background-color: orange;
   border-radius: 15px;
   
   width: 200px;
   height: 60px;
  
   
   }
   .button1{
   margin-left: 210px;
   margin-top: -60px;
   }
   img{
   margin-left: 50px;
   }
   .card:hover{
     -ms-transform: scale(1.0); /* IE 9 */
  -webkit-transform: scale(0.8); /* Safari 3-8 */
  transform: scale(0.8);
  background-color: white; 
  }
 body {
    height: 100%;
      
 </style>
<body>



<br>



<c:forEach items="${productlist}" var="product"> 
<div class="card">
<img src="productimg?id=<c:out value='${product.id}' ></c:out>" width="350px" height="300px%">


<button>
<div style="margin-left: -130px; margin-top: -10px;">
<i class="fa fa-shopping-cart" aria-hidden="true" style="font-size: 40px;"></i>
</div>
<div style="margin-top: -30px;">Add to cart</div>
</button>
<div class="button1">
<button>


<div style="margin-left: -130px; margin-top: -10px;">
<i class="fa fa-credit-card-alt" aria-hidden="true" style="font-size: 40px;"></i>
</div>
<div style="margin-top: -30px;">BUY NOW</div>
</button>
</div>


<div class="nameu">
<c:out  value="${product.productname}"></c:out><br>
<c:out value="${product.category}"></c:out> 
</div>

</div>
</c:forEach>


</body>
</html>