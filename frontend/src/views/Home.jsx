import React from 'react'
import {useLoaderData} from 'react-router-dom'
import Catalog from '../components/Catalog';

const Home = () => {
  const products = useLoaderData();
  return (
    <>
    <h1>TechRevive</h1>
    <section>
      <Catalog products={products}/>
    </section>
    </>
  );
}

export default Home;