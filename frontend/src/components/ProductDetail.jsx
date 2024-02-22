import React, {useState, useEffect} from 'react'
import {useParams} from 'react-router-dom'
import {getProductById} from '../services/services'
import './ProductDetail.css'

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
    <>
    <h1 className='product-tittle'>{product.name}</h1>
        <div className='container-product-id'>
            
            <div className='product-info-image'>
                
                <img src={product.image} alt={product.name} />
                
            </div>
          
        
            <div  className="product-info-text">
                <p>{product.location_id}</p>
                <p>Price: {product.price}</p>
                <p>{product.description}</p>
            </div>
        </div>
    </>
       
  );
};



export default ProductDetail
