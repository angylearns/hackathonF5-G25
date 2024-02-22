import React, { useState } from 'react'
import { Link } from 'react-router-dom'
import { getUser } from '../services/services';
import './Card.css'

const Card = ({ product }) => {
  const [seller, setSeller] = useState();

  return (
    <article className='card-product'>
      <img src={product.image} alt={product.name} />
      <h2>{product.name}</h2>
      <p>Price: {product.price}</p>
      <div  className="buttons-info">
      <Link to={`/product/${product.id}`}><button className='button-card'>Detalles</button></Link>
      <button className='button-card' onClick={() => getUser(product.seller_id).then(seller => setSeller(seller))}>Comprar</button>

      </div>
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
