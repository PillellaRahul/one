<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · Modern E‑Commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    :root {
      --bg: #f8faff;
      --surface: #ffffff;
      --primary: #0b1e33;
      --accent: #2a7de1;
      --accent-light: #e9f0fe;
      --muted: #5e6f8d;
      --shadow: 0 12px 30px -8px rgba(0, 20, 40, 0.08);
      --radius: 20px;
      --radius-sm: 14px;
      --transition: all 0.2s ease;
    }
    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    /* header */
    header {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
      position: sticky;
      top: 0;
      z-index: 50;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 14px 0;
      gap: 12px;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand .accent {
      color: var(--accent);
    }
    .brand i {
      color: var(--accent);
      font-size: 1.3rem;
    }
    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-desktop a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: var(--transition);
      text-decoration: none;
    }
    .nav-desktop a:hover,
    .nav-desktop a:focus {
      background: var(--accent-light);
      color: var(--accent);
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg);
      border-radius: 60px;
      padding: 4px 6px 4px 18px;
      border: 1px solid transparent;
      transition: var(--transition);
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 4px 12px rgba(42, 125, 225, 0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 8px 0;
      font-size: 0.95rem;
      width: 100%;
      outline: none;
      color: var(--primary);
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 40px;
      cursor: pointer;
      font-size: 1rem;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      background: #1a5fb0;
      transform: scale(0.96);
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: var(--primary);
      padding: 8px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      width: 44px;
      height: 44px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: var(--accent-light);
      color: var(--accent);
    }
    .cart-wrapper {
      position: relative;
    }
    .cart-badge {
      position: absolute;
      top: -2px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 4px 8px rgba(42, 125, 225, 0.3);
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      color: var(--primary);
      cursor: pointer;
    }
    /* mobile menu */
    .mobile-menu {
      display: none;
      background: white;
      border-top: 1px solid rgba(0,0,0,0.03);
      padding: 18px 0;
    }
    .mobile-menu a {
      display: block;
      padding: 12px 0;
      font-weight: 500;
      border-bottom: 1px solid #f0f4fe;
      text-decoration: none;
      color: var(--primary);
    }
    .mobile-menu a:last-child {
      border-bottom: none;
    }
    /* hero */
    .hero {
      background: linear-gradient(145deg, #0b1e33 0%, #123456 100%);
      border-radius: var(--radius);
      padding: 60px 40px;
      margin: 24px 0 32px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }
    .hero-content {
      max-width: 600px;
    }
    .hero-content h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.8rem;
      line-height: 1.2;
      margin-bottom: 12px;
      letter-spacing: -0.02em;
    }
    .hero-content p {
      opacity: 0.85;
      font-size: 1.1rem;
      margin-bottom: 24px;
      max-width: 480px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      font-size: 0.95rem;
      cursor: pointer;
      transition: var(--transition);
      text-decoration: none;
    }
    .btn-primary {
      background: white;
      color: #0b1e33;
    }
    .btn-primary:hover {
      background: #eef4ff;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    }
    .btn-outline-light {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-outline-light:hover {
      background: rgba(255,255,255,0.08);
      border-color: white;
    }
    .hero-illustration i {
      font-size: 6rem;
      opacity: 0.2;
      color: white;
    }
    /* section */
    .section {
      margin: 48px 0;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 24px;
      flex-wrap: wrap;
      gap: 12px;
    }
    .section-header h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      font-weight: 600;
    }
    .section-header .muted {
      color: var(--muted);
      font-weight: 400;
      font-size: 0.95rem;
    }
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      padding: 22px 10px;
      border-radius: var(--radius-sm);
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: default;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 35px -10px rgba(0, 20, 40, 0.12);
      border-color: var(--accent-light);
    }
    .cat-card i {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 8px;
      display: block;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
      margin-bottom: 4px;
    }
    .cat-card .muted {
      font-size: 0.75rem;
      color: var(--muted);
    }
    /* products */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-sm);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 40px -12px rgba(0, 20, 40, 0.12);
    }
    .product-card img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      background: #f0f4fe;
    }
    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: var(--muted);
      text-transform: uppercase;
      letter-spacing: 0.03em;
      margin-bottom: 8px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .price-current {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .price-old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .rating {
      color: #f4b642;
      font-size: 0.85rem;
      letter-spacing: 1px;
    }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .product-footer .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      cursor: pointer;
      transition: var(--transition);
    }
    .product-footer .add-btn:hover {
      background: var(--accent);
    }
    .product-footer .wish-btn {
      background: transparent;
      border: 1px solid #e9edf4;
      width: 44px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
      color: var(--muted);
    }
    .product-footer .wish-btn:hover {
      background: #fef0f0;
      border-color: #ffb3b3;
      color: #e54a4a;
    }
    /* deal banner */
    .deal-banner {
      background: linear-gradient(135deg, #f0f7ff, #ffffff);
      border-radius: var(--radius);
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 24px;
      padding: 30px 32px;
      box-shadow: var(--shadow);
      border: 1px solid rgba(42, 125, 225, 0.06);
    }
    .deal-banner .deal-img {
      flex: 1 1 200px;
    }
    .deal-banner .deal-img i {
      font-size: 5rem;
      color: var(--accent);
      opacity: 0.3;
    }
    .deal-banner .deal-content {
      flex: 2;
    }
    .deal-banner .deal-content h3 {
      font-size: 1.8rem;
      font-family: 'Poppins', sans-serif;
    }
    .timer-box {
      display: flex;
      gap: 14px;
      margin: 16px 0;
    }
    .time-unit {
      background: var(--primary);
      color: white;
      padding: 8px 14px;
      border-radius: 12px;
      text-align: center;
      min-width: 64px;
    }
    .time-unit span {
      display: block;
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1.2;
    }
    .time-unit small {
      font-size: 0.7rem;
      opacity: 0.7;
      text-transform: uppercase;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      flex-wrap: wrap;
    }
    .deal-price .big {
      font-size: 2rem;
      font-weight: 700;
    }
    .deal-price .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 1.1rem;
    }
    .deal-price .badge {
      background: #e74c3c;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.8rem;
    }
    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scrollbar-width: thin;
    }
    .testimonial-card {
      min-width: 260px;
      background: var(--surface);
      border-radius: var(--radius-sm);
      padding: 20px;
      box-shadow: var(--shadow);
      border: 1px solid rgba(0,0,0,0.02);
    }
    .testimonial-card .stars {
      color: #f4b642;
      letter-spacing: 2px;
    }
    .testimonial-card p {
      margin: 10px 0 12px;
      font-size: 0.95rem;
      color: #1f2a3e;
    }
    .testimonial-card .person {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .testimonial-card .person .avatar {
      width: 40px;
      height: 40px;
      background: var(--accent-light);
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: var(--accent);
    }
    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      border-radius: var(--radius);
      padding: 40px 32px;
      color: white;
      text-align: center;
    }
    .newsletter-box h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin: 6px 0 20px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 10px;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: none;
      min-width: 260px;
      font-size: 1rem;
    }
    .newsletter-form button {
      background: white;
      color: var(--primary);
      border: none;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 700;
      cursor: pointer;
      transition: var(--transition);
    }
    .newsletter-form button:hover {
      background: #eef4ff;
      transform: scale(0.97);
    }
    #newsletterMsg {
      margin-top: 14px;
      font-size: 0.95rem;
    }
    /* footer */
    footer {
      margin-top: 40px;
      padding: 40px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.04);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 36px;
      justify-content: space-between;
    }
    .footer-col p {
      color: var(--muted);
      max-width: 280px;
      margin-top: 8px;
    }
    .footer-social a {
      color: var(--muted);
      margin-right: 14px;
      font-size: 1.2rem;
      transition: var(--transition);
    }
    .footer-social a:hover {
      color: var(--accent);
    }
    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links div {
      min-width: 100px;
    }
    .footer-links h6 {
      font-weight: 600;
      margin-bottom: 10px;
    }
    .footer-links a {
      display: block;
      color: var(--muted);
      text-decoration: none;
      padding: 4px 0;
      font-size: 0.9rem;
    }
    .footer-links a:hover {
      color: var(--primary);
    }
    .footer-copy {
      text-align: center;
      margin-top: 30px;
      color: var(--muted);
      font-size: 0.85rem;
    }

    /* responsive */
    @media (max-width: 920px) {
      .nav-desktop { display: none; }
      .mobile-toggle { display: inline-flex; }
      .search-wrap { min-width: 140px; }
    }
    @media (max-width: 640px) {
      .hero { padding: 32px 20px; text-align: center; justify-content: center; }
      .hero-content h1 { font-size: 2rem; }
      .hero-content p { margin-left: auto; margin-right: auto; }
      .hero-actions { justify-content: center; }
      .deal-banner { flex-direction: column; text-align: center; }
      .timer-box { justify-content: center; }
      .grid-products { grid-template-columns: 1fr 1fr; }
      .footer-grid { flex-direction: column; }
    }
    @media (max-width: 440px) {
      .grid-products { grid-template-columns: 1fr; }
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 3; flex: 1 1 100%; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:8px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a href="#" class="brand"><i class="fas fa-cube"></i> Nexus<span class="accent">Shop</span></a>
      </div>

      <nav class="nav-desktop">
        <a href="#"><i class="fas fa-home"></i> Home</a>
        <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
        <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
        <a href="#"><i class="fas fa-fire"></i> Trending</a>
      </nav>

      <div style="display:flex;align-items:center;gap:8px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
          <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrapper">
            <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-badge" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div class="mobile-menu container" id="mobileMenu">
      <a href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#deals">Deals</a>
      <a href="#">Trending</a>
      <a href="#">About</a>
    </div>
  </header>

  <main class="container">
    <!-- Hero -->
    <section class="hero">
      <div class="hero-content">
        <h1>New Season <br>Premium Picks</h1>
        <p>Discover curated fashion, tech & accessories. Free shipping on orders over $50.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-outline-light" id="exploreDeals">Explore Deals</button>
        </div>
      </div>
      <div class="hero-illustration">
        <i class="fas fa-shopping-bag"></i>
      </div>
    </section>

    <!-- Categories -->
    <section id="categories" class="section">
      <div class="section-header">
        <h2>Shop by Category</h2>
        <span class="muted">Browse collections</span>
      </div>
      <div class="grid-categories" id="categoriesGrid"></div>
    </section>

    <!-- Products -->
    <section class="section">
      <div class="section-header">
        <h2>Trending Now</h2>
        <span class="muted">Popular this week</span>
      </div>
      <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- Deal banner -->
    <section id="deals" class="section">
      <div class="deal-banner">
        <div class="deal-img"><i class="fas fa-laptop"></i></div>
        <div class="deal-content">
          <h3>Flash Sale: MacBook Air M2</h3>
          <p class="muted">Ultra‑thin, powerful, and now with a special discount.</p>
          <div class="timer-box" id="timerBox">
            <div class="time-unit"><span id="dealDays">0</span><small>Days</small></div>
            <div class="time-unit"><span id="dealHours">00</span><small>Hrs</small></div>
            <div class="time-unit"><span id="dealMinutes">00</span><small>Min</small></div>
            <div class="time-unit"><span id="dealSeconds">00</span><small>Sec</small></div>
          </div>
          <div class="deal-price">
            <span class="big">$999</span>
            <span class="old">$1,199</span>
            <span class="badge">-17%</span>
          </div>
          <div style="margin-top: 12px; display:flex; gap:12px; flex-wrap:wrap;">
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Buy Now</button>
            <span style="background:#f0f4fe; padding:8px 16px; border-radius:40px; font-weight:500;">Only 12 left</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section">
      <div class="section-header">
        <h2>Customer Stories</h2>
        <span class="muted">Real reviews</span>
      </div>
      <div class="testimonials-scroll" id="testimonials">
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“Fast shipping and the quality is incredible. Will order again!”</p>
          <div class="person"><div class="avatar">AM</div><div><strong>Ava M.</strong><div style="font-size:0.8rem;color:var(--muted)">Verified</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★☆</div>
          <p>“Great selection, easy checkout. The customer support was very helpful.”</p>
          <div class="person"><div class="avatar">ML</div><div><strong>Michael L.</strong><div style="font-size:0.8rem;color:var(--muted)">Frequent buyer</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“Love the design and the prices. My new favourite store.”</p>
          <div class="person"><div class="avatar">SR</div><div><strong>Sophia R.</strong><div style="font-size:0.8rem;color:var(--muted)">First time</div></div></div>
        </div>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="section">
      <div class="newsletter-box">
        <h3>Stay in the loop</h3>
        <p>Subscribe for exclusive offers & new arrivals</p>
        <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container footer-grid">
      <div class="footer-col">
        <div style="font-weight:700; font-size:1.3rem;"><i class="fas fa-cube" style="color:var(--accent);"></i> NexusShop</div>
        <p>Modern e‑commerce demo built with care.</p>
        <div class="footer-social">
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="footer-links">
        <div><h6>Company</h6><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
        <div><h6>Support</h6><a href="#">Help</a><a href="#">Returns</a><a href="#">Contact</a></div>
      </div>
    </div>
    <div class="footer-copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </footer>

  <script>
    (function() {
      // ------ DATA ------
      const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
      ];

      const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
        { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
        { id: 5, title: 'Sony A7 IV', price: 2499, oldPrice: null, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
        { id: 6, title: 'Chanel No.5', price: 120, oldPrice: null, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: null, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
      ];

      // ------ STATE ------
      let cartCount = 0;
      const cartCountEl = document.getElementById('cartCount');
      const categoriesGrid = document.getElementById('categoriesGrid');
      const productsGrid = document.getElementById('productsGrid');
      const searchInput = document.getElementById('searchInput');

      // ------ RENDER ------
      function renderCategories() {
        categoriesGrid.innerHTML = CATEGORIES.map(cat => `
          <div class="cat-card" data-cat="${cat.id}">
            <i class="fas ${cat.icon}"></i>
            <h4>${cat.name}</h4>
            <div class="muted">Explore</div>
          </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(el => {
          el.addEventListener('click', () => {
            const name = el.querySelector('h4').textContent;
            searchInput.value = name;
            filterProducts(name);
            document.getElementById('categories').scrollIntoView({ behavior: 'smooth', block: 'start' });
          });
        });
      }

      function renderProducts(list) {
        if (!list.length) {
          productsGrid.innerHTML = `<div style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found</div>`;
          return;
        }
        productsGrid.innerHTML = list.map(p => `
          <div class="product-card">
            <img src="${p.img}" alt="${p.title}" loading="lazy">
            <div class="product-body">
              <h5>${p.title}</h5>
              <div class="category-tag">${p.category}</div>
              <div class="price-row">
                <span class="price-current">$${p.price.toLocaleString()}</span>
                ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
                <span class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:var(--muted);font-size:0.75rem;">(${p.reviews})</span></span>
              </div>
            </div>
            <div class="product-footer">
              <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
              <button
