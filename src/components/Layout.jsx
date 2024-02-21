import React from 'react'
import { Outlet } from 'react-router-dom'

const Layout = () => {
  return (
    <>
    <nav>Soy un nav</nav>
    <Outlet/>
    <footer>Soy un footer</footer>
    </>
  )
}

export default Layout