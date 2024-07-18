<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/home.css">
  
    <title>Document</title>
</head>
<body>
<c:forEach items="${productlist}" var="product">
<img src="productimg?id=<c:out value='${product.id}' ></c:out>" width="40%" height="30%">
</c:forEach>
    <nav class="navbar"></nav>
        <!-- hero section -->
        <header class="hero-section">
            <div class="content">
                <img src="img" class="logo" alt="">
                <p class="sub-heading"></p>
            </div>
          
        </header>
        <div  class="video">
        <video style="margin-left: -230px; width: 1750px;" src="../img/bgvideo.mp4" muted autoplay></video>
        </div>
        <!-- cards- container -->
        <section style="margin-top: 250px;" class="product">
            <h2 class="product-category">best selling</h2>
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="product-container">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">20% off</span>
                        <img src="img/card11.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">Highlander</h2>
                        <p class="product-short-des">Sneakers For Men</p>
                        <span class="price">̥₹750</span><span class="actual-price">₹899</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">52% off</span>
                        <img src="img/card2.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">Roadster</h2>
                        <p class="product-short-des">Men Regular Fit Striped Casual Shirt</p>
                        <span class="price">₹714</span><span class="actual-price">₹1499</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">57% off</span>
                        <img src="img/buds.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">Noise</h2>
                        <p class="product-short-des">Wireless Earbuds with Mic, 30-Hours of Playtime</p>
                        <span class="price">₹1,499</span><span class="actual-price">₹3,499</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">10% off</span>
                        <img src="img/laptop.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">ASUS</h2>
                        <p class="product-short-des">ASUS Vivobook S 14</p>
                        <span class="price">₹81,490</span><span class="actual-price">₹82,309</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">23% off</span>
                        <img src="img/iphone.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">i Phone 12</h2>
                        <p class="product-short-des">Apple iPhone 12(128GB)</p>
                        <span class="price">₹54,499</span><span class="actual-price">₹70,900</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">35% off</span>
                        <img src="img/tv.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">Samsung</h2>
                        <p class="product-short-des">Samsung 108 cm (43 inches) 4K Ultra HD LED TV</p>
                        <span class="price">₹30,970</span><span class="actual-price">₹47,900</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">70% off</span>
                        <img src="img/smartwatch.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">Fire-Boltt</h2>
                        <p class="product-short-des">Fire-Boltt Ring 3 Blutooth Calling Smartwatch 1.8</p>
                        <span class="price">₹2,998</span><span class="actual-price">₹8,999</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">7% off</span>
                        <img src="img/toy.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">Cactus Toy</h2>
                        <p class="product-short-des">Storio Toys Dancing Cactus Talking Toy</p>
                        <span class="price">₹649</span><span class="actual-price">₹700</span>
                    </div>
                </div>
                <!-- +7 more cards -->
            </div>
        </section>
        <!-- collections -->
        <section class="collection-container">
            <a href="#" class="collection">
                <img src="img/women-collection.png" alt="">
                <p class="collection-title">women <br> apparels</p>
            </a>
            <a href="#" class="collection">
                <img src="img/men-collection.png" alt="">
                <p class="collection-title">men <br> apparels</p>
            </a>
            <a href="#" class="collection">
                <img src="img/accessories-collection.png" alt="">
                <p class="collection-title">accessories</p>
            </a>
        </section>
        <!-- cards- container shirts -->
    <section class="product">
        <h2 class="product-category">shirts</h2>
        <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
        <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
        <div class="product-container">
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card2.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card5.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card6.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card3.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card7.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% off</span>
                    <img src="img/card8.png" class="product-thumb" alt="">
                    <button class="card-btn">add to whislist</button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">brand</h2>
                    <p class="product-short-des">a short line about the cloth..</p>
                    <span class="price">$20</span><span class="actual-price">$40</span>
                </div>
            </div>
            <!-- +7 more cards -->
        </div>
    </section>
        <!-- cards- container shoes -->
        <section class="product">
            <h2 class="product-category">Shoes</h2>
            <button class="pre-btn"><img src="img/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="img/arrow.png" alt=""></button>
            <div class="product-container">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card9.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card10.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card11.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card12.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card9.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card10.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card11.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <img src="img/card12.png" class="product-thumb" alt="">
                        <button class="card-btn">add to whislist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">brand</h2>
                        <p class="product-short-des">a short line about the cloth..</p>
                        <span class="price">$20</span><span class="actual-price">$40</span>
                    </div>
                </div>
                <!-- +7 more cards -->
            </div>
        </section>
        <footer> </footer>
    
    <script src="js/nav.js"></script>
    <script src="js/home.js"></script>
    <script src="js/footer.js"></script>
    
</body>
</html>