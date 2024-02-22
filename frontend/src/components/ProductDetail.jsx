import React, {useState, useEffect} from 'react'
import {useParams} from 'react-router-dom'
import {getProductById} from '../services/services'
import { getUser } from '../services/services';
import './ProductDetail.css'

const ProductDetail = () => {
  const {id} = useParams();
  const [product, setProduct] = useState(null);
  const [seller, setSeller] = useState();
  const [locations, setLocations] = useState([]);

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
    
        <div className='container-product-id'>
            
            <div className='product-info-image'>
                
                <img src={product.image} alt={product.name} />
                
            </div>
          
        
            <div  className="product-info-text">
              <h3 className='product-tittle'>{product.name}</h3>
                <p>{location.id}</p>
                <p>{product.description}</p>
                <p>Price: {product.price}</p>
                <div>
                  <button className='button-card' onClick={() => getUser(product.seller_id).then(seller => setSeller(seller))}>Comprar</button>
                </div>
                {seller && (<p>
                    Datos del Vendedor:
                    <ul>
                      <li>Teléfono: {seller.mobile}</li>
                      <li>Email: {seller.email}</li>
                    </ul>
                </p>)}
            </div>
        </div>
    </>
       
  );
};



export default ProductDetail
