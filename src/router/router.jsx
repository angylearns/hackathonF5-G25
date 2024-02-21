import { createBrowserRouter } from "react-router-dom";

const router = createBrowserRouter([
    {
        path: "/",
      element: <Layout/>,
      children:[
        {},{}
      ]

    } /* add routes here */,
    ],
  );
  export  default router;