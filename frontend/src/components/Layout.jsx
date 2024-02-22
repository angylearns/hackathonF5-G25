import React from 'react'
import { Outlet } from 'react-router-dom';
import Header from './Header/Header';
import Footer from './Footer/Footer';
import "./Layout.css"

const Layout = () => {
  return (
    <>
    <Header />
      <Outlet />
      <h1>Soy un Body, estoy en Layout</h1>
    <Footer />
    </>
  )
}

export default Layout