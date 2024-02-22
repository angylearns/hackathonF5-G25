import { createBrowserRouter } from "react-router-dom";
import Home from "../views/Home";
import Layout from "../components/Layout";
import {getProducts, getProductById} from '../services/services'
import ProductDetail from "../components/ProductDetail";

const router = createBrowserRouter([
    {
        path: "/",
      element: <Layout/>,
      children:[
        {
            path: "/",
            element: <Home/>,
            loader: getProducts
        },
        {
          path: "/product/:id",  
          element: <ProductDetail/>,
          loader: getProductById
            
        }
      ]

    } /* add routes here */,
    ],
  );
  export  default router;