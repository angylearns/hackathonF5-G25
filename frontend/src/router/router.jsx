import { createBrowserRouter } from "react-router-dom";
import Home from "../views/Home";
import Layout from "../components/Layout";
import {getProducts} from '../services/server'

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
            
        }
      ]

    } /* add routes here */,
    ],
  );
  export  default router;