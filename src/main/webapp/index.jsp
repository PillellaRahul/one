<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Nexus · graphical e‑commerce</title>
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
      --bg: #f0f4fe;
      --surface: #ffffff;
      --primary: #0b1a2e;
      --accent: #2a7de1;
      --accent-glow: #d4e2fc;
      --muted: #5b6f8c;
      --radius-xl: 32px;
      --radius-lg: 20px;
      --radius-md: 16px;
      --shadow-card: 0 20px 40px -12px rgba(0, 20, 40, 0.12);
      --shadow-hover: 0 28px 56px -16px rgba(42, 125, 225, 0.22);
      --transition: 0.3s cubic-bezier(0.2, 0, 0, 1);
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: 1340px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ---- header with glass effect ---- */
    header {
      background: rgba(255, 255, 255, 0.6);
      backdrop-filter: blur(18px) saturate(1.3);
      -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(255, 255, 255, 0.4);
      position: sticky;
      top: 0;
      z-index: 60;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 10px 0;
      gap: 12px;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 8px;
      color: var(--primary);
      text-decoration: none;
    }
    .brand i {
      background: var(--accent);
      color: white;
      padding: 6px 8px;
      border-radius: 14px;
      font-size: 1.2rem;
    }

    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 2px;
    }
    .nav-desktop a {
      padding: 8px 20px;
      border-radius: 60px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: var(--transition);
      text-decoration: none;
    }
    .nav-desktop a:hover {
      background: rgba(42, 125, 225, 0.10);
      color: var(--accent);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 6px 4px 22px;
      border: 1px solid rgba(42, 125, 225, 0.10);
      transition: var(--transition);
      min-width: 200px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 6px 24px rgba(42, 125, 225, 0.12);
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
      width: 44px;
      height: 44px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 1rem;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      background: #1a5fb0;
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
      width: 46px;
      height: 46px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: rgba(42, 125, 225, 0.08);
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
      width: 24px;
      height: 24px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 4px 12px rgba(42, 125, 225, 0.3);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      color: var(--primary);
      cursor: pointer;
    }

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

    /* ---- hero with graphic elements ---- */
    .hero {
      background: linear-gradient(145deg, #0b1a2e 0%, #1d3853 100%);
      border-radius: var(--radius-xl);
      padding: 56px 48px;
      margin: 28px 0 44px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      position: relative;
      overflow: hidden;
    }
    .hero::before {
      content: '';
      position: absolute;
      top: -60px;
      right: -60px;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(42,125,225,0.18) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero::after {
      content: '';
      position: absolute;
      bottom: -80px;
      left: 20%;
      width: 300px;
      height: 300px;
      background: radial-gradient(circle, rgba(255,255,255,0.04) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      max-width: 540px;
      position: relative;
      z-index: 2;
    }
    .hero-content .tag {
      display: inline-block;
      background: rgba(255,255,255,0.10);
      padding: 6px 18px;
      border-radius: 60px;
      font-size: 0.8rem;
      font-weight: 600;
      letter-spacing: 0.03em;
      margin-bottom: 16px;
      border: 1px solid rgba(255,255,255,0.06);
    }
    .hero-content h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 3.2rem;
      line-height: 1.1;
      margin-bottom: 14px;
      letter-spacing: -0.02em;
    }
    .hero-content h1 span {
      background: linear-gradient(120deg, #82b1ff, #a0c4ff);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero-content p {
      opacity: 0.8;
      font-size: 1.1rem;
      margin-bottom: 28px;
      max-width: 420px;
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
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      text-decoration: none;
    }
    .btn-primary {
      background: white;
      color: #0b1a2e;
    }
    .btn-primary:hover {
      background: #f0f5ff;
      transform: translateY(-3px);
      box-shadow: 0 16px 32px rgba(0,0,0,0.20);
    }
    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.15);
      color: white;
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.06);
      border-color: rgba(255,255,255,0.4);
    }
    .hero-graphic {
      display: flex;
      gap: 20px;
      align-items: center;
      position: relative;
      z-index: 2;
    }
    .hero-graphic .orb {
      width: 100px;
      height: 100px;
      background: radial-gradient(circle at 30% 30%, rgba(42,125,225,0.6), rgba(42,125,225,0.1));
      border-radius: 50%;
      filter: blur(2px);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255,255,255,0.06);
    }
    .hero-graphic i {
      font-size: 5rem;
      opacity: 0.15;
      color: white;
    }

    /* ---- sections ---- */
    .section {
      margin: 48px 0;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 26px;
      flex-wrap: wrap;
      gap: 12px;
    }
    .section-header h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.9rem;
      font-weight: 600;
    }
    .section-header .muted {
      color: var(--muted);
      font-weight: 400;
    }

    /* categories with gradient cards */
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: var(--surface);
      padding: 26px 12px;
      border-radius: var(--radius-lg);
      text-align: center;
      box-shadow: var(--shadow-card);
      transition: var(--transition);
      cursor: default;
      border: 1px solid rgba(0,0,0,0.02);
      position: relative;
      overflow: hidden;
    }
    .cat-card::after {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: linear-gradient(135deg, rgba(42,125,225,0.03), transparent);
      pointer-events: none;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-glow);
    }
    .cat-card i {
      font-size: 2.6rem;
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

    /* products with graphical flair */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 26px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-card);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(0,0,0,0.02);
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: #f0f4fe;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.02);
    }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: white;
      padding: 4px 16px;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      box-shadow: 0 4px 12px rgba(42,125,225,0.2);
    }
    .product-body {
      padding: 16px 16px 8px;
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
      margin-top: 10px;
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
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
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
      gap: 8px;
      cursor: pointer;
      transition: var(--transition);
    }
    .product-footer .add-btn:hover {
      background: var(--accent);
    }
    .product-footer .wish-btn {
      background: transparent;
      border: 1px solid #e9edf4;
      width: 50px;
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

    /* deal banner with graphic overlay */
    .deal-banner {
      background: white;
      border-radius: var(--radius-xl);
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 30px;
      padding: 28px 36px;
      box-shadow: var(--shadow-card);
      border: 1px solid rgba(42,125,225,0.06);
      position: relative;
      overflow: hidden;
    }
    .deal-banner::before {
      content: '';
      position: absolute;
      right: -80px;
      top: -80px;
      width: 280px;
      height: 280px;
      background: radial-gradient(circle, rgba(42,125,225,0.05), transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .deal-banner .deal-icon i {
      font-size: 5rem;
      color: var(--accent);
      opacity: 0.15;
    }
    .deal-banner .deal-content {
      flex: 2;
      position: relative;
      z-index: 2;
    }
    .deal-banner .deal-content h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.9rem;
    }
    .timer-box {
      display: flex;
      gap: 14px;
      margin: 16px 0;
    }
    .time-unit {
      background: var(--primary);
      color: white;
      padding: 8px 18px;
      border-radius: var(--radius-md);
      text-align: center;
      min-width: 72px;
    }
    .time-unit span {
      display: block;
      font-size: 2rem;
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
      gap: 18px;
      flex-wrap: wrap;
    }
    .deal-price .big {
      font-size: 2.2rem;
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
      padding: 4px 18px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.8rem;
    }

    /* testimonials with gradient avatars */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scrollbar-width: thin;
    }
    .testimonial-card {
      min-width: 280px;
      background: var(--surface);
      border-radius: var(--radius-lg);
      padding: 24px;
      box-shadow: var(--shadow-card);
      border: 1px solid rgba(0,0,0,0.02);
      transition: var(--transition);
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
    }
    .testimonial-card .stars {
      color: #f4b642;
      letter-spacing: 2px;
    }
    .testimonial-card p {
      margin: 12px 0 16px;
      font-size: 0.95rem;
    }
    .testimonial-card .person {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .person .avatar {
      width: 48px;
      height: 48px;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: white;
      background: linear-gradient(135deg, var(--accent), #6aa6ff);
    }

    /* newsletter with graphical bg */
    .newsletter-box {
      background: var(--primary);
      border-radius: var(--radius-xl);
      padding: 52px 36px;
      color: white;
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .newsletter-box::before {
      content: '';
      position: absolute;
      top: -40%;
      right: -20%;
      width: 500px;
      height: 500px;
      background: radial-gradient(circle, rgba(42,125,225,0.08), transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .newsletter-box h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2.2rem;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin: 6px 0 26px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 14px;
      position: relative;
      z-index: 2;
    }
    .newsletter-form input {
      padding: 16px 26px;
      border-radius: 60px;
      border: none;
      min-width: 300px;
      font-size: 1rem;
    }
    .newsletter-form button {
      background: white;
      color: var(--primary);
      border: none;
      padding: 16px 40px;
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
      margin-top: 18px;
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
      margin-right: 18px;
      font-size: 1.2rem;
      transition: var(--transition);
    }
    .footer-social a:hover {
      color: var(--accent);
    }
    .footer-links {
      display: flex;
      gap: 52px;
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
      .hero { padding: 32px 24px; text-align: center; justify-content: center; }
      .hero-content h1 { font-size: 2.4rem; }
      .hero-content p { margin-left: auto; margin-right: auto; }
      .hero-actions { justify-content: center; }
      .hero-graphic { display: none; }
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
        <a href="#" class="brand"><i class="fas fa-cube"></i> Nexus</a>
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
    <!-- Hero with graphic -->
    <section class="hero">
      <div class="hero-content">
        <div class="tag"><i class="fas fa-star" style="margin-right:6px;"></i> New collection</div>
        <h1>Premium <span>essentials</span> for every day</h1>
        <p>Curated style, tech & accessories — with free shipping on all orders.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore</button>
        </div>
      </div>
      <div class="hero-graphic">
        <div class="orb"></div>
        <i class="fas fa-cube"></i>
        <div class="orb" style="width:70px;height:70px;background:radial-gradient(circle at 30% 30%, rgba(255,255,255,0.1), transparent);"></div>
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
          <div style="margin-top:16px; display:flex; gap:14px; flex-wrap:wrap;">
            <button class="btn btn-primary" id="buyDeal" style="background:var(--primary);color:white;"><i class="fas fa-cart-plus"></i> Buy now</button>
            <span style="background:var(--accent-glow); padding:8px 22px; border-radius:60px; font-weight:600;">Only 12 left</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section">
      <div class="section-header">
        <h2>Customer stories</h2>
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
          <p>“Love the design and the prices. My new favourite store.”</p>
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
        <div style="font-weight:700; font-size:1.5rem; font-family:'Space Grotesk',sans-serif;"><i class="fas fa-cube" style="color:var(--accent);"></i> Nexus</div>
        <p>Modern e‑commerce demo with a graphical edge.</p>
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
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdb
