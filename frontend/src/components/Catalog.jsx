import Card from "./Card";
import "./Catalog.css";

const Catalog = ({ products }) => {
    return (
        <article>
        {products.map(product => (
            <Card key={product.id} product={product} />
        ))}
        </article>
    )

}

export default Catalog;