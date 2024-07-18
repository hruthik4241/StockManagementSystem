const createNav = () => {
    let nav = document.querySelector('.navbar');

    nav.innerHTML = `
        <div class="nav">
            <img src="img/logoi.png" class="brand-logo" alt="">
            <div class="nav-items">
                <div class="search">
                    <input type="text" class="search-box" placeholder="search brand, product">
                    <button class="search-btn">search</button>
                </div>
                <a href="product"><img src="img/user1.png" alt=""></a>
                <a href="cart.jsp"><img src="img/icon1.png" alt=""></a>
                <a href="signup">
                <input style="color: white; width: 75px; height : 45px; font-size: 16px; border-radius: 8px; background-color: black; " type="button" value="Register" />
                </a>
                <a href="login"><input style="color: white; width: 75px; height : 45px; font-size: 16px; border-radius: 8px; background-color: black;" type="button" value="Login" /></a>
                <a href="adminlogin"><input style="color: white; width: 75px; height : 45px; font-size: 16px; border-radius: 8px; background-color: black;" type="button" value="Admin" /></a>
            </div>
        </div>
        <ul class="links-container">
            <li class="link-item"><a href="index.jsp" class="link">home</a></li>
            <li class="link-item"><a href="women.jsp" class="link">women</a></li>
            <li class="link-item"><a href="men.jsp" class="link">men</a></li>
            <li class="link-item"><a href="kid.jsp" class="link">kids</a></li>
            <li class="link-item"><a href="newproducts" class="link">accessories</a></li>
        </ul>
    `;
}

createNav();