import { Link, useLoaderData, useNavigate, useParams } from "react-router-dom";
import { deleteProduct } from "../../services/services";


const SellerList = () => {
    const userid = useParams().userid;

    const products = useLoaderData();
    const navigate = useNavigate();

    return (
        <>
            <h1>Mis productos</h1>
            <section>
                {products.map(product => product.seller_id == userid && (
                    <article>
                        <Link to={`/product/${product.id}`}>
                        <img style={{ width: "100px" }} src={product.image} alt={product.name} />
                        </Link>
                        <h2>{product.name}</h2>
                        <button onClick={() => navigate(`/admin/${userid}/edit/product/${product.id}`)} className="button">Modificar</button>
                        <button className="button" onClick={() => deleteProduct(product.id).then(navigate(`/admin/${userid}`))}>Eliminar</button>
                    </article>))}
            </section>
        </>
    )

}

export default SellerList;
