import React from 'react'
import { Outlet } from 'react-router-dom'

const Layout = () => {
  return (
    <>
    <nav></nav>
    <Outlet/>
    <footer></footer>
    </>
  )
}

export default Layout