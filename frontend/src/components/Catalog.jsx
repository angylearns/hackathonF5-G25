import Card from "./Card";
import "./Catalog.css";

const Catalog = ({ products }) => {
    return (
        <section>
        {products.map(product => (
            <Card key={product.id} product={product} />
        ))}
        </section>
    )

}

export default Catalog;