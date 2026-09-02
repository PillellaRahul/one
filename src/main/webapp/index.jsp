<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Nexus · modern e‑commerce</title>
  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f4f7fc;
      --surface: #ffffff;
      --primary: #0a1929;
      --accent: #2563eb;
      --accent-soft: #dbe7fe;
      --muted: #5b6f8c;
      --radius-xl: 28px;
      --radius-lg: 18px;
      --radius-md: 14px;
      --shadow-soft: 0 16px 40px -12px rgba(0, 20, 40, 0.10);
      --shadow-hover: 0 24px 48px -16px rgba(37, 99, 235, 0.18);
      --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: 1320px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ---- header ---- */
    header {
      background: rgba(255, 255, 255, 0.72);
      backdrop-filter: blur(16px) saturate(1.2);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
      position: sticky;
      top: 0;
      z-index: 60;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 12px;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
      color: var(--primary);
      text-decoration: none;
    }
    .brand i {
      color: var(--accent);
      font-size: 1.4rem;
    }
    .brand .highlight {
      color: var(--accent);
    }

    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .nav-desktop a {
      padding: 8px 18px;
      border-radius: 60px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: var(--transition);
      text-decoration: none;
    }
    .nav-desktop a:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 6px 4px 20px;
      border: 1px solid #e6edf6;
      transition: var(--transition);
      min-width: 200px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 6px 18px rgba(37, 99, 235, 0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.95rem;
      width: 100%;
      outline: none;
      color: var(--primary);
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 1rem;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      background: #1d4ed8;
      transform: scale(0.94);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: var(--primary);
      padding: 8px;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
      width: 44px;
      height: 44px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .cart-wrapper {
      position: relative;
    }
    .cart-badge {
      position: absolute;
      top: -2px;
      right: -2px;
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
      box-shadow: 0 4px 10px rgba(37, 99, 235, 0.3);
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
      border-top: 1px solid rgba(0,0,0,0.02);
      padding: 20px 0;
    }
    .mobile-menu a {
      display: block;
      padding: 14px 0;
      font-weight: 500;
      border-bottom: 1px solid #f0f4fe;
      text-decoration: none;
      color: var(--primary);
    }
    .mobile-menu a:last-child { border-bottom: none; }

    /* ---- hero ---- */
    .hero {
      background: linear-gradient(150deg, #0a1929 0%, #1a314b 100%);
      border-radius: var(--radius-xl);
      padding: 64px 48px;
      margin: 28px 0 40px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -40px;
      bottom: -40px;
      width: 300px;
      height: 300px;
      background: radial-gradient(circle, rgba(37,99,235,0.15) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      max-width: 560px;
      position: relative;
      z-index: 2;
    }
    .hero-content h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 3.2rem;
      line-height: 1.1;
      margin-bottom: 12px;
      letter-spacing: -0.02em;
    }
    .hero-content p {
      opacity: 0.8;
      font-size: 1.1rem;
      margin-bottom: 28px;
      max-width: 440px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      text-decoration: none;
    }
    .btn-primary-white {
      background: white;
      color: #0a1929;
    }
    .btn-primary-white:hover {
      background: #f0f5ff;
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(0,0,0,0.15);
    }
    .btn-ghost-light {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.2);
      color: white;
    }
    .btn-ghost-light:hover {
      background: rgba(255,255,255,0.06);
      border-color: rgba(255,255,255,0.5);
    }
    .hero-illustration i {
      font-size: 7rem;
      opacity: 0.15;
      color: white;
      position: relative;
      z-index: 2;
    }

    /* ---- sections ---- */
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
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
      font-weight: 600;
    }
    .section-header .muted {
      color: var(--muted);
      font-weight: 400;
      font-size: 0.95rem;
    }

    /* categories */
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      padding: 24px 12px;
      border-radius: var(--radius-md);
      text-align: center;
      box-shadow: var(--shadow-soft);
      transition: var(--transition);
      cursor: default;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .cat-card i {
      font-size: 2.4rem;
      color: var(--accent);
      margin-bottom: 10px;
      display: block;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }
    .cat-card .muted {
      font-size: 0.7rem;
      color: var(--muted);
    }

    /* products */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-soft);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f0f4fe;
    }
    .product-body {
      padding: 16px 16px 10px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 2px;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      color: var(--muted);
      text-transform: uppercase;
      letter-spacing: 0.04em;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      flex-wrap: wrap;
      margin-top: 8px;
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
      font-size: 0.8rem;
      letter-spacing: 1px;
    }
    .product-footer {
      padding: 6px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .product-footer .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px;
      border-radius: 60px;
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
      width: 48px;
      border-radius: 60px;
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
      background: white;
      border-radius: var(--radius-xl);
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 28px;
      padding: 32px 36px;
      box-shadow: var(--shadow-soft);
      border: 1px solid rgba(37,99,235,0.06);
    }
    .deal-banner .deal-icon i {
      font-size: 5rem;
      color: var(--accent);
      opacity: 0.2;
    }
    .deal-banner .deal-content {
      flex: 2;
    }
    .deal-banner .deal-content h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
    }
    .timer-box {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-unit {
      background: var(--primary);
      color: white;
      padding: 8px 16px;
      border-radius: var(--radius-md);
      text-align: center;
      min-width: 68px;
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
      padding: 4px 16px;
      border-radius: 60px;
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
      min-width: 270px;
      background: var(--surface);
      border-radius: var(--radius-md);
      padding: 24px;
      box-shadow: var(--shadow-soft);
      border: 1px solid rgba(0,0,0,0.02);
    }
    .testimonial-card .stars {
      color: #f4b642;
      letter-spacing: 2px;
    }
    .testimonial-card p {
      margin: 12px 0 14px;
      font-size: 0.95rem;
    }
    .testimonial-card .person {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .person .avatar {
      width: 44px;
      height: 44px;
      background: var(--accent-soft);
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: var(--accent);
    }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      border-radius: var(--radius-xl);
      padding: 48px 36px;
      color: white;
      text-align: center;
    }
    .newsletter-box h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin: 6px 0 24px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 12px;
    }
    .newsletter-form input {
      padding: 16px 24px;
      border-radius: 60px;
      border: none;
      min-width: 280px;
      font-size: 1rem;
    }
    .newsletter-form button {
      background: white;
      color: var(--primary);
      border: none;
      padding: 16px 36px;
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
      margin-top: 16px;
      font-size: 0.95rem;
    }

    /* footer */
    footer {
      margin-top: 48px;
      padding: 48px 0 28px;
      border-top: 1px solid rgba(0,0,0,0.04);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .footer-col p {
      color: var(--muted);
      max-width: 260px;
      margin-top: 8px;
    }
    .footer-social a {
      color: var(--muted);
      margin-right: 16px;
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
      margin-bottom: 12px;
    }
    .footer-links a {
      display: block;
      color: var(--muted);
      text-decoration: none;
      padding: 6px 0;
      font-size: 0.9rem;
    }
    .footer-links a:hover {
      color: var(--primary);
    }
    .footer-copy {
      text-align: center;
      margin-top: 32px;
      color: var(--muted);
      font-size: 0.85rem;
    }

    /* responsive */
    @media (max-width: 960px) {
      .nav-desktop { display: none; }
      .mobile-toggle { display: inline-flex; }
      .search-wrap { min-width: 140px; }
    }
    @media (max-width: 700px) {
      .hero { padding: 36px 24px; text-align: center; justify-content: center; }
      .hero-content h1 { font-size: 2.4rem; }
      .hero-content p { margin-left: auto; margin-right: auto; }
      .hero-actions { justify-content: center; }
      .deal-banner { flex-direction: column; text-align: center; }
      .timer-box { justify-content: center; }
      .grid-products { grid-template-columns: 1fr 1fr; }
      .footer-grid { flex-direction: column; }
    }
    @media (max-width: 480px) {
      .grid-products { grid-template-columns: 1fr; }
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 3; flex: 1 1 100%; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:6px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a href="#" class="brand"><i class="fas fa-cube"></i> Nexus<span class="highlight">.</span></a>
      </div>

      <nav class="nav-desktop">
        <a href="#"><i class="fas fa-home"></i> Home</a>
        <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
        <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
        <a href="#"><i class="fas fa-fire"></i> Trending</a>
      </nav>

      <div style="display:flex;align-items:center;gap:6px;">
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
        <h1>New arrivals <br />for the season</h1>
        <p>Curated style, tech & accessories. Free shipping on all orders.</p>
        <div class="hero-actions">
          <button class="btn btn-primary-white" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost-light" id="exploreDeals">Explore deals</button>
        </div>
      </div>
      <div class="hero-illustration">
        <i class="fas fa-shopping-bag"></i>
      </div>
    </section>

    <!-- Categories -->
    <section id="categories" class="section">
      <div class="section-header">
        <h2>Shop by category</h2>
        <span class="muted">Browse collections</span>
      </div>
      <div class="grid-categories" id="categoriesGrid"></div>
    </section>

    <!-- Products -->
    <section class="section">
      <div class="section-header">
        <h2>Trending now</h2>
        <span class="muted">Most popular this week</span>
      </div>
      <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- Deal banner -->
    <section id="deals" class="section">
      <div class="deal-banner">
        <div class="deal-icon"><i class="fas fa-laptop"></i></div>
        <div class="deal-content">
          <h3>Flash sale: MacBook Air M2</h3>
          <p class="muted">Sleek, powerful, and now at a special price.</p>
          <div class="timer-box">
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
          <div style="margin-top:16px; display:flex; gap:12px; flex-wrap:wrap;">
            <button class="btn btn-primary-white" id="buyDeal" style="background:var(--primary);color:white;"><i class="fas fa-cart-plus"></i> Buy now</button>
            <span style="background:var(--accent-soft); padding:8px 20px; border-radius:60px; font-weight:500;">Only 12 left</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section">
      <div class="section-header">
        <h2>What customers say</h2>
        <span class="muted">Real reviews</span>
      </div>
      <div class="testimonials-scroll" id="testimonials">
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“Incredible quality and super fast delivery. I’m a fan!”</p>
          <div class="person"><div class="avatar">AM</div><div><strong>Ava M.</strong><div style="font-size:0.75rem;color:var(--muted)">Verified</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★☆</div>
          <p>“Smooth checkout, great selection. Support was very helpful.”</p>
          <div class="person"><div class="avatar">ML</div><div><strong>Michael L.</strong><div style="font-size:0.75rem;color:var(--muted)">Frequent buyer</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“Love the minimalist design and the prices. New favourite.”</p>
          <div class="person"><div class="avatar">SR</div><div><strong>Sophia R.</strong><div style="font-size:0.75rem;color:var(--muted)">First time</div></div></div>
        </div>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="section">
      <div class="newsletter-box">
        <h3>Stay in the loop</h3>
        <p>Subscribe for exclusive offers and early access</p>
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
        <div style="font-weight:700; font-size:1.4rem; font-family:'Space Grotesk',sans-serif;"><i class="fas fa-cube" style="color:var(--accent);"></i> Nexus.</div>
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
    <div class="footer-copy">© <span id="year"></span> Nexus. All rights reserved.</div>
  </footer>

  <script>
    (function() {
      // -------- DATA --------
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

      // -------- STATE --------
      let cartCount = 0;
      const cartCountEl = document.getElementById('cartCount');
      const categoriesGrid = document.getElementById('categoriesGrid');
      const productsGrid = document.getElementById('productsGrid');
      const searchInput = document.getElementById('searchInput');

      // -------- RENDER --------
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
              <div class="
