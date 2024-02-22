import { Outlet, createBrowserRouter } from "react-router-dom";
import Home from "../views/Home";
import Layout from "../components/Layout";
import { getProducts, getProductById } from '../services/services'
import ProductDetail from "../components/ProductDetail";
import Catalog from "../components/Catalog";
import Form from "../components/Form/Form";
import Admin from "../views/Admin";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Layout />,
    children: [
      {
        path: "/",
        element: <Home />,
        loader: getProducts,
        children: [
          {
            path: "/:category",
          },
          {
            path: "/product/:id",
            element: <ProductDetail />,
            loader: getProductById
          }
        ]
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
            element: <Admin />,
            loader: getProducts,
          },
          {
            path: "/admin/product/:id",
            element: <ProductDetail />,
            loader: getProductById
          },
          {
            path: "/admin/add/product/",
            element: <Form method="post" />
          },
          {
            path: "/admin/edit/product/:id",
            element: <Form method="put" />
          }
        ]
      }
    ]

  } /* add routes here */,
],
);
export default router;