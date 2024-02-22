import React, { useState } from 'react'
import { Link } from 'react-router-dom'
import { getUser } from '../services/services';

const Card = ({ product }) => {
  const [seller, setSeller] = useState();

  return (
    <article>
      <img src={product.image} alt={product.name} />
      <h2>{product.name}</h2>
      <p>Price: {product.price}</p>
      <p>{product.description}</p>
      <Link to={`/product/${product.id}`}><button>Detalles</button></Link>
      <button onClick={() => getUser(product.seller_id).then(seller => setSeller(seller))}>Comprar</button>
      {seller && (<p>
        Datos del Vendedor:
          <ul>
            <li>Teléfono: {seller.mobile}</li>
            <li>Email: {seller.email}</li>
          </ul>
      </p>)}
    </article>
  )
}

export default Card
