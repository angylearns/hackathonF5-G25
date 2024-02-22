import { createBrowserRouter } from "react-router-dom";
import Home from "../views/Home";
import Layout from "../components/Layout";
import { getProducts, getProductById } from '../services/services'
import ProductDetail from "../components/ProductDetail";
import Form from "../components/Form/Form";
import Admin from "../views/Admin";
import SellerList from "../components/SellerList/SellerList";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Layout />,
    children: [
      {
        path: "/",
        element: <Home />,
        loader: getProducts,
      },
      {
        path: "/product/:id",
        element: <ProductDetail />,
      },
      {
        path: "/admin/",
        children: [
          {
            path: "/admin/",
            element: <Admin />,
            loader: getProducts,
          },
          {
            path: "/admin/:userid",
            element: <SellerList />,
            loader: getProducts,
          },
          {
            path: "/admin/:userid/product/:id",
            element: <ProductDetail />,
          },
          {
            path: "/admin/:userid/add/product/",
            element: <Form method="post" />
          },
          {
            path: "/admin/:userid/edit/product/:id",
            element: <Form method="put" />
          }
        ]
      }
    ]

  }
],
);
export default router;