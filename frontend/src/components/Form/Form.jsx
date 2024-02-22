import { Link, useNavigate, useParams } from "react-router-dom";
import { useForm } from 'react-hook-form';
import { createProduct, getProductById, updateProduct } from "../../services/services";
import "./Form.css"

function Form({ method }) {
    const { register, handleSubmit, setValue } = useForm();
    const id = useParams().id;
    const userid = useParams().userid;
    const navigate = useNavigate();
  
    if (method === "put") {
    
        getProductById(id).then(product => {
            setValue("name", product.name);
            setValue("category_id", product.category_id);
            setValue("price", product.price);
            setValue("seller_id", product.seller_id);
            setValue("location_id", product.location_id);
            setValue("image", product.image);
            setValue("description", product.description);
        });
    };

    return (
            <form className="form-admin" onSubmit={handleSubmit(data => { method === "post" ? createProduct(data).then(()=>navigate(`/admin/${userid}`)) : updateProduct(id, data).then(()=>navigate(`/admin/${userid}`))})}>
                <label className="label-form" htmlFor="name">Nombre:
                    <input className="input-form" required type="text" name="name" id="name" {...register("name")} />
                </label>
                <label className="label-form" htmlFor="category">
                    Categoría:
                    <input className="input-form" required type="number" name="category_id" id="category" {...register("category_id")} />
                </label>
                <label className="label-form" htmlFor="price">
                    Precio:
                    <input className="input-form" required type="number" step="any" name="price" id="price" {...register("price")} />
                </label>
                <label className="label-form" htmlFor="seller">
                    Vendedor:
                    <input className="input-form" required type="number" name="seller_id" id="seller" {...register("seller_id")} />
                </label>
                <label className="label-form" htmlFor="location">
                    Localización:
                    <input className="input-form" required type="number" name="location_id" id="location" {...register("location_id")} />
                </label>
                <label className="label-form" htmlFor="image">
                    Imagen:
                    <input className="input-form" required type="text" name="image" id="image" {...register("image")} />
                </label>
                <label className="label-form" htmlFor="description">
                    Descripción:
                    <input className="input-form" type="text" name="description" id="description" {...register("description")} />
                </label>
                <div className="buttons-form">
                    <button type="submit">Guardar</button>
                    <Link to={`/admin/${userid}`} ><button>Cancelar</button></Link>
                </div>
            </form>
        )
    }

    export default Form;