mkdir -p src/components src/pages

cat > src/components/Navbar.jsx << 'EON'
function Navbar() {
  return (
    <nav style={styles.nav}>
      <div style={styles.logo}>
        Little Oaks Montessori
      </div>

      <ul style={styles.menu}>
        <li><a href="#home" style={styles.link}>Home</a></li>
        <li><a href="#about" style={styles.link}>About</a></li>
        <li><a href="#admissions" style={styles.link}>Admissions</a></li>
        <li><a href="#contact" style={styles.link}>Contact</a></li>
      </ul>
    </nav>
  )
}

const styles = {
  nav: {
    display: "flex",
    justifyContent: "space-between",
    alignItems: "center",
    padding: "15px 40px",
    backgroundColor: "#3B6E4F",
    color: "#FFF9E8",
    fontFamily: "Montserrat, sans-serif"
  },
  logo: { fontWeight: "bold", fontSize: "18px" },
  menu: { listStyle: "none", display: "flex", gap: "20px" },
  link: { color: "#FFF9E8", textDecoration: "none" }
}

export default Navbar
EON

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
    backgroundColor: "#3B6E4F",
    color: "#FFF9E8",
    textAlign: "center",
    padding: "30px",
    marginTop: "40px",
    fontFamily: "Montserrat, sans-serif"
  }
}

export default Footer
EON

cat > src/pages/Home.jsx << 'EON'
function Home() {
  return (
    <section id="home" style={{padding:"60px",textAlign:"center"}}>
      <h1>Welcome to Little Oaks Montessori Daycare & Kindergarten</h1>
      <p>
        A nurturing environment where children grow into confident,
        independent, and compassionate learners through the Montessori approach.
      </p>
    </section>
  )
}
export default Home
EON

cat > src/pages/About.jsx << 'EON'
function About() {
  return (
    <section id="about" style={{padding:"60px",textAlign:"center"}}>
      <h2>About Us</h2>
      <p>
        Little Oaks Montessori Daycare & Kindergarten provides a child-centered
        education rooted in Montessori philosophy.
      </p>
    </section>
  )
}
export default About
EON

cat > src/pages/Admissions.jsx << 'EON'
function Admissions() {
  return (
    <section id="admissions" style={{padding:"60px",textAlign:"center"}}>
      <h2>Admissions</h2>
      <p>Enrollment open for ages 2–6 years.</p>
    </section>
  )
}
export default Admissions
EON

cat > src/pages/Contact.jsx << 'EON'
function Contact() {
  return (
    <section id="contact" style={{padding:"60px",textAlign:"center"}}>
      <h2>Contact Us</h2>
      <p>Katete, Mbarara, Uganda</p>
      <p>📞 +256 762 023393</p>
      <p>Email: admin@littleoaksmontessori.ac.ug</p>
    </section>
  )
}
export default Contact
EON

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

echo "DONE"
