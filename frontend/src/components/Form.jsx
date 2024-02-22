import { createProduct } from "../services/services";

function Form () {

    return ( 
        <>
        <form onSubmit={(data) => createProduct(data)}>
            <label htmlFor="name">Nombre:
                <input type="text" name="name" id="name"/>
            </label>
            <label htmlFor="category">
                Categoría:
                <input type="number" name="category_id" id="category" />
            </label>
            <label htmlFor="price">
                Precio:
                <input type="number" name="price" id="price" />
            </label>
            <label htmlFor="seller">
                Vendedor:
                <input type="number" name="seller_id" id="seller" />
            </label>
            <label htmlFor="location">
                Localización:
                <input type="number" name="location_id" id="location" />
            </label>
            <label htmlFor="image">
                Imagen:
                <input type="text" name="image" id="image" />
            </label>
            <label htmlFor="description">
                Descripción:
                <input type="text" name="description" id="description" />
            </label>

            <button type="submit">Crear</button>
            <button>Cancelar</button>

        </form>
        </>
    )

   
}

export default Form;