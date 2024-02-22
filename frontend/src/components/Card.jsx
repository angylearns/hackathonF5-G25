import React from 'react'

const Card = ({products}) => {
  return (
    <>
    {
        products.map(product =>{
            return(
               <div key={product.id}>
                <img src={product.image} alt={product.name} />
                <h2>{product.name}</h2>
                <p>{product.description}</p>
                <p>Price: {product.price}</p>

               </div> 
            )
        })
        
        



    }
    
    
    </>

    
  )
}

export default Card
