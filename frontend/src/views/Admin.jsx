import { useForm } from "react-hook-form";
import { useLoaderData } from "react-router-dom";

const Admin = () => {
    const products = useLoaderData();
    const { register, handleSubmit, setValue } = useForm();


    
    return (
        <>  
            <form  onSubmit={handleSubmit(data => {data.user})}>
                <input {...register("user")} placeholder="Ingresar número de usuario"></input>
                <button type="submit">Mostrar mis productos</button>
            </form>
            <h1>Mis productos</h1>
            <section>
                {products.map(product =>
                    <article>
                        <img style={{ width: "100px" }} src={product.image} alt={product.name} />
                        <h2>{product.name}</h2>
                    </article>)}
            </section>
        </>
    );
}

export default Admin;