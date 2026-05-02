import Navbar from "./components/Navbar"
import Footer from "./components/Footer"
import "./index.css"

const whatsappPrimary = "256705074279"
const whatsappSecondary = "256762023393"

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
              <a href={`https://wa.me/${whatsappPrimary}`} className="btn secondary">
                WhatsApp Us
              </a>
            </div>
          </div>
        </section>

        <section id="admissions" className="section highlight">
          <p className="eyebrow">Admissions</p>
          <h2>Enrollment is open</h2>
          <p>Complete the form and send directly via WhatsApp.</p>

          <form
            className="admission-form"
            onSubmit={(e) => {
              e.preventDefault()

              const form = e.target
              const parent = form.parent.value
              const child = form.child.value
              const age = form.age.value
              const phone = form.phone.value
              const message = form.message.value

              const text = `Admission Request:%0A
Parent: ${parent}%0A
Child: ${child}%0A
Age: ${age}%0A
Phone: ${phone}%0A
Message: ${message}`

              window.open(`https://wa.me/${whatsappPrimary}?text=${text}`, "_blank")
            }}
          >
            <label>
              Parent/Guardian Name
              <input name="parent" required />
            </label>

            <label>
              Child's Name
              <input name="child" required />
            </label>

            <label>
              Child's Age
              <select name="age" required>
                <option value="">Select age</option>
                <option>2 years</option>
                <option>3 years</option>
                <option>4 years</option>
                <option>5 years</option>
                <option>6 years</option>
              </select>
            </label>

            <label>
              Phone Number
              <input name="phone" required />
            </label>

            <label>
              Message
              <textarea name="message" />
            </label>

            <button className="btn form-btn">
              Send via WhatsApp
            </button>
          </form>
        </section>

        <section id="contact" className="section contact">
          <h2>Contact Us</h2>
          <div className="contact-box">
            <p><strong>Location:</strong> Katete, Mbarara, Uganda</p>
            <p><strong>Phone:</strong> +256 762 023393</p>
            <p><strong>WhatsApp 1:</strong> +256 705 074279</p>
            <p><strong>WhatsApp 2:</strong> +256 762 023393</p>
            <p><strong>Email:</strong> admin@littleoaksmontessori.ac.ug</p>
          </div>
        </section>
      </main>

      {/* Floating WhatsApp Button */}
      <a
        className="whatsapp-float"
        href={`https://wa.me/${whatsappPrimary}`}
        target="_blank"
      >
        WhatsApp
      </a>

      <Footer />
    </>
  )
}

export default App
