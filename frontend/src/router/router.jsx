import { createBrowserRouter } from "react-router-dom";
import Home from "../views/Home";
import Layout from "../components/Layout";
import {getProducts} from '../services/services'
import ProductDetail from "../components/ProductDetail";
import Catalog from "../components/Catalog";

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
            
        }
      ]

    } /* add routes here */,
    ],
  );
  export  default router;