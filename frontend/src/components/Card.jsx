import React from 'react'
import { Link } from 'react-router-dom'

const Card = ({ product }) => {
  return (
    <>
      <img src={product.image} alt={product.name} />
      <h2>{product.name}</h2>
      <p>Price: {product.price}</p>
      <p>{product.description}</p>
      <Link to={`/product/${product.id}`}><button>Detalles</button></Link>
      <button>Comprar</button>
    </>
  )
}

export default Card
