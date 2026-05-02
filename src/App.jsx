import Navbar from "./components/Navbar"
import Footer from "./components/Footer"
import "./index.css"

function App() {
  return (
    <>
      <Navbar />

      <main>
        <section id="home" className="hero">
          <div className="hero-card">
            <div className="logo-placeholder">LO</div>
            <p className="eyebrow">Katete, Mbarara, Uganda</p>
            <h1>Little Oaks Montessori Daycare & Kindergarten</h1>
            <p className="hero-text">
              A warm Montessori environment where children grow into confident,
              independent, and compassionate learners.
            </p>
            <div className="hero-actions">
              <a href="#admissions" className="btn primary">Start Admissions</a>
              <a href="#contact" className="btn secondary">Contact Us</a>
            </div>
          </div>
        </section>

        <section id="about" className="section">
          <p className="eyebrow">Our Approach</p>
          <h2>Child-centered learning with purpose</h2>
          <p>
            Little Oaks Montessori Daycare & Kindergarten nurtures independence,
            curiosity, confidence, practical life skills, and early academic growth
            through the Montessori philosophy.
          </p>

          <div className="grid">
            <div className="card">
              <h3>Montessori Method</h3>
              <p>Hands-on learning that supports naming, recognition, recall, and independence.</p>
            </div>
            <div className="card">
              <h3>Safe Environment</h3>
              <p>A caring, respectful, and structured space for children aged 2–6 years.</p>
            </div>
            <div className="card">
              <h3>Ugandan Context</h3>
              <p>Learning experiences rooted in family, nature, community, and local culture.</p>
            </div>
          </div>
        </section>

        <section id="admissions" className="section highlight">
          <p className="eyebrow">Admissions</p>
          <h2>Enrollment is open</h2>
          <p>
            We welcome children aged 2–6 years. Parents may contact the school office
            to begin registration and receive admission guidance.
          </p>
          <a href="#contact" className="btn primary">Request Admission Information</a>
        </section>

        <section id="contact" className="section contact">
          <p className="eyebrow">Contact</p>
          <h2>Visit or call us</h2>
          <div className="contact-box">
            <p><strong>Location:</strong> Katete, Mbarara, Uganda</p>
            <p><strong>Phone:</strong> +256 762 023393</p>
            <p><strong>WhatsApp:</strong> +254 700 466480</p>
            <p><strong>Email:</strong> admin@littleoaksmontessori.ac.ug</p>
          </div>
        </section>
      </main>

      <Footer />
    </>
  )
}

export default App
