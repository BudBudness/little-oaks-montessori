
# NAVBAR (SIDEBAR + MOBILE MENU)
cat > src/components/Navbar.jsx << 'EON'
import { useState } from "react"
import logo from "../assets/logo.png"

function Navbar() {
  const [open, setOpen] = useState(false)

  return (
    <>
      {/* Mobile Top Bar */}
      <div style={styles.mobileBar}>
        <img src={logo} style={styles.mobileLogo} />
        <button onClick={() => setOpen(!open)} style={styles.menuBtn}>
          ☰
        </button>
      </div>

      {/* Sidebar */}
      <div style={{
        ...styles.sidebar,
        left: open ? "0" : "-250px"
      }}>
        <img src={logo} style={styles.logo} />
        <h3 style={styles.title}>Little Oaks Montessori</h3>

        <a href="#home" style={styles.link}>Home</a>
        <a href="#about" style={styles.link}>About</a>
        <a href="#admissions" style={styles.link}>Admissions</a>
        <a href="#contact" style={styles.link}>Contact</a>
      </div>

      {/* Overlay */}
      {open && <div style={styles.overlay} onClick={() => setOpen(false)} />}
    </>
  )
}

const styles = {
  mobileBar: {
    display: "flex",
    justifyContent: "space-between",
    alignItems: "center",
    padding: "10px 20px",
    background: "#3B6E4F",
    color: "#FFF9E8",
    position: "fixed",
    width: "100%",
    top: 0,
    zIndex: 1000
  },
  mobileLogo: {
    width: "40px"
  },
  menuBtn: {
    fontSize: "24px",
    background: "none",
    border: "none",
    color: "#FFF9E8"
  },
  sidebar: {
    position: "fixed",
    top: 0,
    left: 0,
    width: "250px",
    height: "100%",
    background: "#3B6E4F",
    color: "#FFF9E8",
    display: "flex",
    flexDirection: "column",
    alignItems: "center",
    paddingTop: "60px",
    gap: "15px",
    transition: "0.3s",
    zIndex: 1001
  },
  logo: {
    width: "90px",
    borderRadius: "50%"
  },
  title: {
    fontSize: "14px",
    textAlign: "center"
  },
  link: {
    color: "#FFF9E8",
    textDecoration: "none",
    fontSize: "16px"
  },
  overlay: {
    position: "fixed",
    top: 0,
    left: 0,
    width: "100%",
    height: "100%",
    background: "rgba(0,0,0,0.3)",
    zIndex: 1000
  }
}

export default Navbar
EON


# HOME (HERO SECTION)
cat > src/pages/Home.jsx << 'EON'
import logo from "../assets/logo.png"

function Home() {
  return (
    <section id="home" style={styles.hero}>
      <img src={logo} style={styles.logo} />

      <h1>Welcome to Little Oaks Montessori Daycare & Kindergarten</h1>

      <p>
        A nurturing environment where children grow into confident,
        independent, and compassionate learners through the Montessori approach.
      </p>
    </section>
  )
}

const styles = {
  hero: {
    padding: "80px 20px",
    textAlign: "center",
    marginTop: "60px"
  },
  logo: {
    width: "150px",
    marginBottom: "20px"
  }
}

export default Home
EON


# ABOUT
cat > src/pages/About.jsx << 'EON'
function About() {
  return (
    <section id="about" style={styles.section}>
      <h2>About Us</h2>
      <p>
        Little Oaks Montessori Daycare & Kindergarten provides a child-centered education rooted in Montessori philosophy.
      </p>
    </section>
  )
}

const styles = {
  section: {
    padding: "60px 20px",
    textAlign: "center"
  }
}

export default About
EON


# ADMISSIONS
cat > src/pages/Admissions.jsx << 'EON'
function Admissions() {
  return (
    <section id="admissions" style={styles.section}>
      <h2>Admissions</h2>
      <p>Enrollment open for ages 2–6 years.</p>
    </section>
  )
}

const styles = {
  section: {
    padding: "60px 20px",
    textAlign: "center"
  }
}

export default Admissions
EON


# CONTACT
cat > src/pages/Contact.jsx << 'EON'
function Contact() {
  return (
    <section id="contact" style={styles.section}>
      <h2>Contact Us</h2>
      <p>Katete, Mbarara, Uganda</p>
      <p>📞 +256 762 023393</p>
      <p>Email: admin@littleoaksmontessori.ac.ug</p>
    </section>
  )
}

const styles = {
  section: {
    padding: "60px 20px",
    textAlign: "center"
  }
}

export default Contact
EON


# FOOTER
cat > src/components/Footer.jsx << 'EON'
function Footer() {
  return (
    <footer style={styles.footer}>
      <p><strong>Little Oaks Montessori Daycare & Kindergarten</strong></p>
      <p>Katete, Mbarara, Uganda</p>
      <p>📞 +256 762 023393 | WhatsApp: +254 700 466480</p>
      <p>Email: admin@littleoaksmontessori.ac.ug</p>
      <p style={{ marginTop: "10px", fontSize: "12px" }}>
        Committed to nurturing confident, independent, and compassionate learners.
      </p>
    </footer>
  )
}

const styles = {
  footer: {
    background: "#3B6E4F",
    color: "#FFF9E8",
    textAlign: "center",
    padding: "30px"
  }
}

export default Footer
EON


# APP
cat > src/App.jsx << 'EON'
import Navbar from "./components/Navbar"
import Footer from "./components/Footer"

import Home from "./pages/Home"
import About from "./pages/About"
import Admissions from "./pages/Admissions"
import Contact from "./pages/Contact"

function App() {
  return (
    <>
      <Navbar />

      <main>
        <Home />
        <About />
        <Admissions />
        <Contact />
      </main>

      <Footer />
    </>
  )
}

export default App
EON

echo "PREMIUM UI READY"

