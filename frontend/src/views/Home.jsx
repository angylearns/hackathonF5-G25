import React from 'react'
import {useLoaderData} from 'react-router-dom'
import Catalog from '../components/Catalog';
import './Home.css'

const Home = () => {
  const products = useLoaderData();
  return (
    <>
    <div className='slogan-home'>
      <h1>TechRevive</h1>
      <p>"Revive la tecnología, renueva el planeta: TechRevive, donde el futuro se construye sobre la innovación sostenible."</p>
    </div>
      <Catalog products={products}/>
    </>
  );
}

export default Home;