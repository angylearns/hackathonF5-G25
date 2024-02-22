import Card from "./Card";
import "./Catalog.css";

const Catalog = ({ products, user }) => {
    return (
        <section>
        {products.map(product => (
            <Card user={user} key={product.id} product={product} />
        ))}
        </section>
    )

}

export default Catalog;