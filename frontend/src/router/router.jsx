import { createBrowserRouter } from "react-router-dom";
import Home from "../views/Home";
import Layout from "../components/Layout";
import {getProducts, getProductById} from '../services/services'
import ProductDetail from "../components/ProductDetail";
import Catalog from "../components/Catalog";
import Form from "../components/Form/Form";

const router = createBrowserRouter([
    {
      path: "/",
      element: <Layout/>,
      children:[
        {
            path: "/",
            element: <Home/>,
            loader: getProducts,
            children: [
              {
                path: "/:category",  
              }
            ]  
        },
        {
          path: "/product/:id",  
          element: <ProductDetail/>,
          loader: getProductById
            
        },
        {
          path: "/add/product/",  
          element: <Form method="post"/>,  
        },
        {
          path: "/edit/product/:id",  
          element: <Form method="put"/>,  
        }
      ]

    } /* add routes here */,
    ],
  );
  export  default router;