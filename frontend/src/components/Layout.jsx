import React from 'react'
import { Outlet } from 'react-router-dom'
import "./Layout.css"

const Layout = () => {
  return (
    <>
    <nav className="">Soy un nav</nav>
    <Outlet/>
    <footer>Soy un footer</footer>
    </>
  )
}

export default Layout