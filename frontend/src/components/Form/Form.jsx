import { useParams } from "react-router-dom";
import { useForm } from 'react-hook-form';
import { createProduct, getProductById, updateProduct } from "../../services/services";
import "./Form.css"

function Form({ method }) {
    const { register, handleSubmit, setValue } = useForm();
    const id = useParams().id;
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

            <form onSubmit={handleSubmit(data => { method === "post" ? createProduct(data) : updateProduct(id, data);  })}>
                <label htmlFor="name">Nombre:
                    <input type="text" name="name" id="name" {...register("name")} />
                </label>
                <label htmlFor="category">
                    Categoría:
                    <input type="number" name="category_id" id="category" {...register("category_id")} />
                </label>
                <label htmlFor="price">
                    Precio:
                    <input type="number" name="price" id="price" {...register("price")} />
                </label>
                <label htmlFor="seller">
                    Vendedor:
                    <input type="number" name="seller_id" id="seller" {...register("seller_id")} />
                </label>
                <label htmlFor="location">
                    Localización:
                    <input type="number" name="location_id" id="location" {...register("location_id")} />
                </label>
                <label htmlFor="image">
                    Imagen:
                    <input type="text" name="image" id="image" {...register("image")} />
                </label>
                <label htmlFor="description">
                    Descripción:
                    <input type="text" name="description" id="description" {...register("description")} />
                </label>
                <div>
                    <button type="submit">Guardar</button>
                    <button>Cancelar</button>
                </div>
            </form>
        )


    }

    export default Form;