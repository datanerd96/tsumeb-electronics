/* Global Variables for light/dark mode */
:root {
  --bg-color: #ffffff;
  --text-color: #333333;
  --header-color: #2B65EC;
  --nav-bg: #333333;
  --button-bg: #00C853;
  --promo-bg: #FFC107;
}

/* Dark Mode Overrides */
body.dark-mode {
  --bg-color: #121212;
  --text-color: #e0e0e0;
  --header-color: #1F4BA5;
  --nav-bg: #222222;
  --button-bg: #018D3F;
  --promo-bg: #A67C3A;
}

/* General Body Styling */
body {
  font-family: 'Poppins', sans-serif;
  margin: 0;
  padding: 0;
  background-color: var(--bg-color);
  color: var(--text-color);
  transition: background-color 0.3s ease, color 0.3s ease;
}

/* Header Styling */
header {
  background-color: var(--header-color);
  color: #fff;
  padding: 1rem;
  text-align: center;
}

/* Navigation Styling */
nav {
  display: flex;
  justify-content: center;
  background-color: var(--nav-bg);
  padding: 0.5rem 0;
}

nav a {
  color: #fff;
  text-decoration: none;
  margin: 0 1rem;
  font-size: 1.2rem;
}

/* Hero Section Styling */
.hero {
  text-align: center;
  padding: 3rem 1rem;
}

/* Call-to-action Buttons */
.cta-buttons a {
  display: inline-block;
  padding: 0.75rem 1.5rem;
  background-color: var(--button-bg);
  color: #fff;
  text-decoration: none;
  border-radius: 5px;
  margin: 0.5rem;
}

/* Promo Banner Styling */
.promo-banner {
  background-color: var(--promo-bg);
  padding: 1rem;
  text-align: center;
}

/* Dark Mode Button Styling */
.theme-toggle {
  position: absolute;
  top: 1rem;
  right: 1rem;
  padding: 0.5rem;
  cursor: pointer;
  background-color: var(--button-bg);
  color: #fff;
  border: none;
  border-radius: 5px;
}

/* Services Section Styling */
.services-container {
  padding: 2rem 1rem;
  text-align: center;
  background: var(--bg-color);
}

.services-container h2 {
  margin-bottom: 2rem;
}

.services-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  max-width: 1200px;
  margin: 0 auto;
}

/* Service Cards Styling */
.service-card {
  background: var(--bg-color);
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1.5rem;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.service-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

/* Footer Styling */
footer {
  background-color: var(--header-color);
  color: #fff;
  text-align: center;
  padding: 1rem;
}

footer a {
  color: #fff;
  text-decoration: none;
}

