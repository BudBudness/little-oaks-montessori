import { useState } from "react"

function Navbar() {
  const [open, setOpen] = useState(false)

  return (
    <>
      <header className="topbar">
        <a href="#home" className="brand">
          <span className="brand-icon">LO</span>
          <span>Little Oaks Montessori</span>
        </a>

        <button className="menu-button" onClick={() => setOpen(true)}>
          ☰
        </button>
      </header>

      <aside className={open ? "sidebar open" : "sidebar"}>
        <div className="sidebar-logo">LO</div>
        <h2>Little Oaks Montessori</h2>
        <p>Daycare & Kindergarten</p>

        <nav>
          <a onClick={() => setOpen(false)} href="#home">Home</a>
          <a onClick={() => setOpen(false)} href="#about">About</a>
          <a onClick={() => setOpen(false)} href="#admissions">Admissions</a>
          <a onClick={() => setOpen(false)} href="#contact">Contact</a>
        </nav>
      </aside>

      {open && <div className="overlay" onClick={() => setOpen(false)}></div>}
    </>
  )
}

export default Navbar
