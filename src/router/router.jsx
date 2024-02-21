import { createBrowserRouter } from "react-router-dom";
import Home from "../views/Home";
import Layout from "../components/Layout";

const router = createBrowserRouter([
    {
        path: "/",
      element: <Layout/>,
      children:[
        {
            path: "/",
            element: <Home/>,
        },{}
      ]

    } /* add routes here */,
    ],
  );
  export  default router;