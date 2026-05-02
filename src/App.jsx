import Navbar from "./components/Navbar"
import Footer from "./components/Footer"
import Home from "./pages/Home"
import About from "./pages/About"
import Admissions from "./pages/Admissions"
import Contact from "./pages/Contact"
import "./index.css"

function App() {
  return (
    <>
      <Navbar />
      <main className="main">
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
