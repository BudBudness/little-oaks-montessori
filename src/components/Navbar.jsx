import { useState } from "react"

function Navbar() {
  const [open, setOpen] = useState(false)

  const closeMenu = () => setOpen(false)

  return (
    <>
      <header className="topbar">
        <div className="brand-mark">LO</div>
        <div className="brand-text">Little Oaks Montessori</div>
        <button className="menu-button" onClick={() => setOpen(true)}>
          ☰
        </button>
      </header>

      <aside className={open ? "sidebar open" : "sidebar"}>
        <div className="brand-mark large">LO</div>
        <h2>Little Oaks Montessori</h2>

        <nav>
          <a onClick={closeMenu} href="#home">Home</a>
          <a onClick={closeMenu} href="#about">About</a>
          <a onClick={closeMenu} href="#admissions">Admissions</a>
          <a onClick={closeMenu} href="#contact">Contact</a>
        </nav>
      </aside>

      {open && <div className="overlay" onClick={closeMenu}></div>}
    </>
  )
}

export default Navbar
