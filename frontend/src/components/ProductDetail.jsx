import React, {useState, useEffect} from 'react'
import {useParams} from 'react-router-dom'
import {getProductById} from '../services/services'

const ProductDetail = () => {
  const {id} = useParams();
  const [product, setProduct] = useState(null);

  useEffect(() => {
    const productId = async () => {
      const product = await getProductById(id);
      setProduct(product);
    };

    productId();
  }, [id]);

  if (!product) { //si no ponía esta comprobación me daba error.
    return null;
  }

  return (
    <div>
       <div className='container-product-id'>
          <h1>{product.name}</h1>
          <img src={product.image} alt={product.name} />
          <p>{product.description}</p>
          <p>Price: {product.price}</p>
        </div>
    </div>
  );
};



export default ProductDetail
