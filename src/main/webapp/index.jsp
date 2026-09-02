<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Nexus · 3D Immersive E‑Commerce</title>
  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ===== RESET & ROOT ===== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #eef2f9;
      --surface: rgba(255, 255, 255, 0.65);
      --surface-solid: #ffffff;
      --primary: #0b1a2e;
      --primary-light: #1d3853;
      --accent: #2a7de1;
      --accent-glow: #d4e2fc;
      --accent-dark: #1a5fb0;
      --muted: #5b6f8c;
      --muted-light: #8a9bb5;
      --success: #22c55e;
      --danger: #ef4444;
      --warning: #f4b642;
      --radius-xl: 32px;
      --radius-lg: 20px;
      --radius-md: 16px;
      --radius-sm: 12px;
      --shadow-card: 0 20px 40px -12px rgba(0, 20, 40, 0.15);
      --shadow-hover: 0 32px 64px -16px rgba(42, 125, 225, 0.25);
      --shadow-glow: 0 8px 32px rgba(42, 125, 225, 0.20);
      --transition: 0.35s cubic-bezier(0.2, 0, 0, 1);
      --font-primary: 'Inter', -apple-system, system-ui, sans-serif;
      --font-display: 'Space Grotesk', sans-serif;
    }

    /* ===== BASE ===== */
    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: var(--font-primary);
      background: var(--bg);
      color: var(--primary);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      perspective: 1400px;
      overflow-x: hidden;
    }

    ::selection {
      background: var(--accent);
      color: white;
    }

    .container {
      max-width: 1340px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ===== SCROLLBAR ===== */
    ::-webkit-scrollbar {
      width: 6px;
      height: 6px;
    }
    ::-webkit-scrollbar-track {
      background: rgba(0,0,0,0.02);
      border-radius: 10px;
    }
    ::-webkit-scrollbar-thumb {
      background: var(--accent);
      border-radius: 10px;
    }
    ::-webkit-scrollbar-thumb:hover {
      background: var(--accent-dark);
    }

    /* ===== UTILITY ===== */
    .text-center { text-align: center; }
    .text-muted { color: var(--muted); }
    .mt-8 { margin-top: 8px; }
    .mt-16 { margin-top: 16px; }
    .mb-8 { margin-bottom: 8px; }
    .mb-16 { margin-bottom: 16px; }
    .flex { display: flex; }
    .flex-center { display: flex; align-items: center; justify-content: center; }
    .gap-8 { gap: 8px; }
    .gap-12 { gap: 12px; }
    .gap-16 { gap: 16px; }
    .gap-24 { gap: 24px; }
    .flex-wrap { flex-wrap: wrap; }

    /* ===== HEADER ===== */
    header {
      background: rgba(255, 255, 255, 0.45);
      backdrop-filter: blur(24px) saturate(1.5);
      -webkit-backdrop-filter: blur(24px);
      border-bottom: 1px solid rgba(255, 255, 255, 0.5);
      position: sticky;
      top: 0;
      z-index: 100;
      transform-style: preserve-3d;
      box-shadow: 0 4px 24px rgba(0,0,0,0.03);
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
      font-family: var(--font-display);
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 8px;
      color: var(--primary);
      text-decoration: none;
      transform: translateZ(20px);
      transition: var(--transition);
    }
    .brand i {
      background: var(--accent);
      color: white;
      padding: 6px 8px;
      border-radius: 14px;
      font-size: 1.2rem;
      box-shadow: 0 8px 24px rgba(42,125,225,0.25);
    }
    .brand:hover {
      transform: translateZ(32px) scale(1.02);
    }

    .nav-desktop {
      display: flex;
      align-items: center;
      gap: 2px;
      transform: translateZ(10px);
    }
    .nav-desktop a {
      padding: 8px 20px;
      border-radius: 60px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: var(--transition);
      text-decoration: none;
      backdrop-filter: blur(4px);
      position: relative;
    }
    .nav-desktop a::after {
      content: '';
      position: absolute;
      bottom: 4px;
      left: 50%;
      width: 0;
      height: 2px;
      background: var(--accent);
      transition: var(--transition);
      transform: translateX(-50%);
    }
    .nav-desktop a:hover::after {
      width: 40%;
    }
    .nav-desktop a:hover {
      background: rgba(42, 125, 225, 0.08);
      color: var(--accent);
      transform: translateZ(16px) scale(1.02);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: rgba(255,255,255,0.6);
      backdrop-filter: blur(8px);
      border-radius: 60px;
      padding: 4px 6px 4px 22px;
      border: 1px solid rgba(255,255,255,0.5);
      transition: var(--transition);
      min-width: 200px;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      transform: translateZ(8px);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 8px 32px rgba(42, 125, 225, 0.12);
      transform: translateZ(24px) scale(1.02);
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
    .search-wrap input::placeholder {
      color: var(--muted-light);
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
      box-shadow: 0 6px 20px rgba(42,125,225,0.25);
    }
    .search-wrap button:hover {
      background: var(--accent-dark);
      transform: scale(0.94) translateZ(12px);
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
      backdrop-filter: blur(4px);
      position: relative;
    }
    .icon-btn:hover {
      background: rgba(42, 125, 225, 0.08);
      color: var(--accent);
      transform: translateZ(16px) scale(1.05);
    }
    .icon-btn .tooltip {
      position: absolute;
      bottom: -30px;
      left: 50%;
      transform: translateX(-50%) scale(0.8);
      background: var(--primary);
      color: white;
      padding: 4px 12px;
      border-radius: 8px;
      font-size: 0.65rem;
      opacity: 0;
      pointer-events: none;
      transition: var(--transition);
      white-space: nowrap;
    }
    .icon-btn:hover .tooltip {
      opacity: 1;
      transform: translateX(-50%) scale(1);
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
      box-shadow: 0 6px 20px rgba(42, 125, 225, 0.35);
      transition: var(--transition);
    }
    .cart-badge.pop {
      animation: popBadge 0.3s ease;
    }
    @keyframes popBadge {
      0% { transform: scale(1); }
      50% { transform: scale(1.4); }
      100% { transform: scale(1); }
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      color: var(--primary);
      cursor: pointer;
      padding: 4px 8px;
      border-radius: 12px;
      transition: var(--transition);
    }
    .mobile-toggle:hover {
      background: rgba(0,0,0,0.04);
    }

    .mobile-menu {
      display: none;
      background: rgba(255,255,255,0.9);
      backdrop-filter: blur(20px);
      border-top: 1px solid rgba(0,0,0,0.02);
      padding: 20px 0;
    }
    .mobile-menu a {
      display: block;
      padding: 14px 0;
      font-weight: 500;
      border-bottom: 1px solid rgba(0,0,0,0.04);
      text-decoration: none;
      color: var(--primary);
      transition: var(--transition);
    }
    .mobile-menu a:hover {
      color: var(--accent);
      padding-left: 12px;
    }
    .mobile-menu a:last-child { border-bottom: none; }

    /* ===== HERO 3D ===== */
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
      transform-style: preserve-3d;
      box-shadow: 0 40px 80px -20px rgba(0,0,0,0.35);
    }
    .hero::before {
      content: '';
      position: absolute;
      top: -80px;
      right: -80px;
      width: 500px;
      height: 500px;
      background: radial-gradient(circle, rgba(42,125,225,0.12) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
      transform: rotateX(25deg) rotateY(-15deg);
    }
    .hero::after {
      content: '';
      position: absolute;
      bottom: -100px;
      left: 10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(255,255,255,0.03) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
      transform: rotateX(30deg);
    }
    .hero-content {
      max-width: 540px;
      position: relative;
      z-index: 2;
      transform: translateZ(30px);
    }
    .hero-content .tag {
      display: inline-block;
      background: rgba(255,255,255,0.06);
      backdrop-filter: blur(8px);
      padding: 6px 20px;
      border-radius: 60px;
      font-size: 0.75rem;
      font-weight: 600;
      letter-spacing: 0.04em;
      margin-bottom: 16px;
      border: 1px solid rgba(255,255,255,0.06);
      box-shadow: 0 4px 20px rgba(0,0,0,0.10);
      text-transform: uppercase;
    }
    .hero-content h1 {
      font-family: var(--font-display);
      font-size: 3.4rem;
      line-height: 1.1;
      margin-bottom: 14px;
      letter-spacing: -0.02em;
      text-shadow: 0 8px 32px rgba(0,0,0,0.20);
    }
    .hero-content h1 span {
      background: linear-gradient(120deg, #82b1ff, #a0c4ff, #82b1ff);
      background-size: 200% auto;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      animation: shimmer 4s ease-in-out infinite;
    }
    @keyframes shimmer {
      0%, 100% { background-position: 0% center; }
      50% { background-position: 200% center; }
    }
    .hero-content p {
      opacity: 0.85;
      font-size: 1.1rem;
      margin-bottom: 28px;
      max-width: 420px;
      text-shadow: 0 4px 16px rgba(0,0,0,0.10);
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
      transform: translateZ(10px);
      font-family: var(--font-primary);
    }
    .btn-primary {
      background: white;
      color: #0b1a2e;
      box-shadow: 0 12px 32px rgba(0,0,0,0.15);
    }
    .btn-primary:hover {
      background: #f0f5ff;
      transform: translateZ(24px) scale(1.03);
      box-shadow: 0 20px 48px rgba(0,0,0,0.25);
    }
    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.12);
      color: white;
      backdrop-filter: blur(4px);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.06);
      border-color: rgba(255,255,255,0.35);
      transform: translateZ(20px) scale(1.02);
    }
    .btn-success {
      background: var(--success);
      color: white;
      box-shadow: 0 12px 32px rgba(34,197,94,0.25);
    }
    .btn-success:hover {
      transform: translateZ(20px) scale(1.03);
      box-shadow: 0 20px 48px rgba(34,197,94,0.3);
    }

    .hero-graphic {
      display: flex;
      gap: 24px;
      align-items: center;
      position: relative;
      z-index: 2;
      transform-style: preserve-3d;
    }
    .hero-graphic .orb {
      width: 120px;
      height: 120px;
      background: radial-gradient(circle at 30% 30%, rgba(42,125,225,0.4), rgba(42,125,225,0.02));
      border-radius: 50%;
      filter: blur(6px);
      backdrop-filter: blur(8px);
      border: 1px solid rgba(255,255,255,0.04);
      transform: rotateX(25deg) rotateY(35deg) translateZ(40px);
      box-shadow: 0 20px 60px rgba(42,125,225,0.10);
      animation: float3d 7s ease-in-out infinite;
    }
    .hero-graphic .orb:nth-child(2) {
      width: 80px;
      height: 80px;
      background: radial-gradient(circle at 30% 30%, rgba(255,255,255,0.06), transparent);
      animation-delay: 2.5s;
    }
    .hero-graphic i {
      font-size: 5.5rem;
      opacity: 0.10;
      color: white;
      transform: translateZ(60px) rotateX(10deg) rotateY(-10deg);
      filter: drop-shadow(0 20px 40px rgba(0,0,0,0.2));
    }

    @keyframes float3d {
      0%, 100% { transform: rotateX(25deg) rotateY(35deg) translateZ(40px) translateY(0); }
      50% { transform: rotateX(25deg) rotateY(35deg) translateZ(55px) translateY(-18px); }
    }

    /* ===== SECTIONS ===== */
    .section {
      margin: 52px 0;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 28px;
      flex-wrap: wrap;
      gap: 12px;
    }
    .section-header h2 {
      font-family: var(--font-display);
      font-size: 2rem;
      font-weight: 600;
      letter-spacing: -0.01em;
    }
    .section-header .muted {
      color: var(--muted);
      font-weight: 400;
      font-size: 0.95rem;
    }
    .section-header .view-all {
      color: var(--accent);
      text-decoration: none;
      font-weight: 500;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .section-header .view-all:hover {
      color: var(--accent-dark);
      transform: translateX(4px);
    }

    /* ===== CATEGORIES 3D ===== */
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 20px;
    }
    .cat-card {
      background: var(--surface);
      backdrop-filter: blur(12px);
      padding: 28px 12px;
      border-radius: var(--radius-lg);
      text-align: center;
      box-shadow: var(--shadow-card);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid rgba(255,255,255,0.5);
      transform-style: preserve-3d;
      transform: translateZ(0);
      position: relative;
      overflow: hidden;
    }
    .cat-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: linear-gradient(135deg, rgba(42,125,225,0.02), transparent);
      pointer-events: none;
    }
    .cat-card:hover {
      transform: translateY(-12px) translateZ(30px) rotateX(4deg);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-glow);
    }
    .cat-card i {
      font-size: 2.8rem;
      color: var(--accent);
      margin-bottom: 10px;
      display: block;
      transform: translateZ(20px);
      transition: var(--transition);
    }
    .cat-card:hover i {
      transform: translateZ(40px) scale(1.1);
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
      transform: translateZ(10px);
    }
    .cat-card .muted {
      font-size: 0.7rem;
      color: var(--muted);
      transform: translateZ(6px);
    }
    .cat-card .count {
      display: inline-block;
      background: var(--accent-glow);
      color: var(--accent);
      padding: 2px 12px;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 600;
      margin-top: 6px;
      transform: translateZ(8px);
    }

    /* ===== PRODUCTS 3D ===== */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(265px, 1fr));
      gap: 28px;
    }
    .product-card {
      background: var(--surface);
      backdrop-filter: blur(12px);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-card);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(255,255,255,0.5);
      transform-style: preserve-3d;
      transform: translateZ(0);
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-14px) translateZ(40px) rotateX(3deg);
      box-shadow: var(--shadow-hover);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: #f0f4fe;
      height: 220px;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.05) translateZ(10px);
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
      box-shadow: 0 8px 24px rgba(42,125,225,0.25);
      transform: translateZ(20px);
      z-index: 2;
    }
    .product-card .badge.sale {
      background: var(--danger);
      box-shadow: 0 8px 24px rgba(239,68,68,0.2);
    }
    .product-card .badge.new {
      background: var(--success);
      box-shadow: 0 8px 24px rgba(34,197,94,0.2);
    }
    .product-card .wishlist-float {
      position: absolute;
      top: 14px;
      right: 14px;
      background: rgba(255,255,255,0.7);
      backdrop-filter: blur(8px);
      border: none;
      width: 40px;
      height: 40px;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
      color: var(--muted);
      font-size: 1rem;
      transform: translateZ(20px);
      z-index: 2;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .product-card .wishlist-float:hover {
      background: white;
      color: var(--danger);
      transform: translateZ(32px) scale(1.1);
      box-shadow: 0 8px 24px rgba(0,0,0,0.08);
    }
    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 2px;
      line-height: 1.3;
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
      color: var(--warning);
      font-size: 0.8rem;
      letter-spacing: 1px;
    }
    .rating span {
      color: var(--muted);
      font-size: 0.7rem;
      letter-spacing: 0;
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
      transform: translateZ(4px);
      font-family: var(--font-primary);
    }
    .product-footer .add-btn:hover {
      background: var(--accent);
      transform: translateZ(20px) scale(1.02);
    }
    .product-footer .add-btn.added {
      background: var(--success);
    }
    .product-footer .wish-btn {
      background: transparent;
      border: 1px solid rgba(0,0,0,0.06);
      width: 50px;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
      color: var(--muted);
      backdrop-filter: blur(4px);
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .product-footer .wish-btn:hover {
      background: #fef0f0;
      border-color: #ffb3b3;
      color: var(--danger);
      transform: translateZ(16px) scale(1.05);
    }
    .product-footer .wish-btn.active {
      color: var(--danger);
      background: #fef0f0;
      border-color: var(--danger);
    }

    /* ===== DEAL BANNER 3D ===== */
    .deal-banner {
      background: rgba(255,255,255,0.55);
      backdrop-filter: blur(20px);
      border-radius: var(--radius-xl);
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 32px;
      padding: 32px 40px;
      box-shadow: var(--shadow-card);
      border: 1px solid rgba(255,255,255,0.5);
      position: relative;
      overflow: hidden;
      transform-style: preserve-3d;
    }
    .deal-banner::before {
      content: '';
      position: absolute;
      right: -60px;
      top: -60px;
      width: 350px;
      height: 350px;
      background: radial-gradient(circle, rgba(42,125,225,0.05), transparent 70%);
      border-radius: 50%;
      pointer-events: none;
      transform: rotateX(30deg);
    }
    .deal-banner::after {
      content: '';
      position: absolute;
      left: -40px;
      bottom: -40px;
      width: 200px;
      height: 200px;
      background: radial-gradient(circle, rgba(42,125,225,0.03), transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .deal-banner .deal-icon i {
      font-size: 5rem;
      color: var(--accent);
      opacity: 0.12;
      transform: translateZ(30px);
    }
    .deal-banner .deal-content {
      flex: 2;
      position: relative;
      z-index: 2;
    }
    .deal-banner .deal-content h3 {
      font-family: var(--font-display);
      font-size: 2rem;
    }
    .deal-banner .deal-content .sub {
      color: var(--muted);
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
      min-width: 74px;
      box-shadow: 0 8px 28px rgba(0,0,0,0.10);
      transform: translateZ(12px);
      transition: var(--transition);
    }
    .time-unit:hover {
      transform: translateZ(24px) scale(1.03);
    }
    .time-unit span {
      display: block;
      font-size: 2.2rem;
      font-weight: 700;
      line-height: 1.2;
      font-family: var(--font-display);
    }
    .time-unit small {
      font-size: 0.7rem;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.04em;
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
      font-family: var(--font-display);
    }
    .deal-price .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 1.1rem;
    }
    .deal-price .badge {
      background: var(--danger);
      color: white;
      padding: 4px 18px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.8rem;
      box-shadow: 0 4px 20px rgba(239,68,68,0.2);
    }
    .deal-progress {
      margin-top: 12px;
      display: flex;
      align-items: center;
      gap: 16px;
    }
    .deal-progress .bar {
      flex: 1;
      height: 6px;
      background: rgba(0,0,0,0.06);
      border-radius: 10px;
      overflow: hidden;
      max-width: 200px;
    }
    .deal-progress .bar .fill {
      height: 100%;
      background: var(--accent);
      border-radius: 10px;
      width: 70%;
      transition: var(--transition);
    }
    .deal-progress .label {
      font-size: 0.8rem;
      color: var(--muted);
      font-weight: 500;
    }

    /* ===== TESTIMONIALS 3D ===== */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 24px;
      scrollbar-width: thin;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll .testimonial-card {
      scroll-snap-align: start;
      min-width: 280px;
      background: var(--surface);
      backdrop-filter: blur(12px);
      border-radius: var(--radius-lg);
      padding: 26px;
      box-shadow: var(--shadow-card);
      border: 1px solid rgba(255,255,255,0.5);
      transition: var(--transition);
      transform-style: preserve-3d;
    }
    .testimonials-scroll .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
      transform: translateZ(24px) rotateX(2deg);
    }
    .testimonial-card .stars {
      color: var(--warning);
      letter-spacing: 2px;
      font-size: 0.9rem;
    }
    .testimonial-card p {
      margin: 12px 0 16px;
      font-size: 0.95rem;
      line-height: 1.6;
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
      box-shadow: 0 8px 24px rgba(42,125,225,0.2);
      transform: translateZ(12px);
      font-size: 1.1rem;
    }
    .testimonial-card .person .info {
      flex: 1;
    }
    .testimonial-card .person .info strong {
      display: block;
      font-weight: 600;
    }
    .testimonial-card .person .info .role {
      font-size: 0.75rem;
      color: var(--muted);
    }

   
