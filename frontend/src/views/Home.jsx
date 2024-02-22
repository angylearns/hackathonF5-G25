import React from 'react'
import {useLoaderData} from 'react-router-dom'
import Card from '../components/Card';

const Home = () => {
  const products = useLoaderData();
  return (
    <>
    <h1>TechRevive</h1>
    <section>
      <Card products={products}/>
    </section>
    </>
    
  )
}

export default Home