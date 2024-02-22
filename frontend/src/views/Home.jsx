import React from 'react'
import {useLoaderData} from 'react-router-dom'
import Catalog from '../components/Catalog';
import './Home.css'

const Home = () => {
  const products = useLoaderData();
  return (
    <>
    {/* <h1 className='Tittle-home'>TechRevive</h1> */}
      <Catalog products={products}/>
    </>
  );
}

export default Home;