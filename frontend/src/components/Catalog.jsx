import Card from "./Card";
import "./Catalog.css";

const Catalog = ({ products }) => {
    return (
    <>
            <section className="section-catalog">
                <h2 className="subtittle-catalog">Todos los productos</h2>
            
            <div className="catalog-products">
                {products.map(product => (
            <Card key={product.id} product={product} />
            ))} 
            </div>
            </section>
            
    
    </>
        
    )

}

export default Catalog;