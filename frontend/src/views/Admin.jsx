import { useForm } from "react-hook-form";
import { useLoaderData, useNavigate } from "react-router-dom";

const Admin = () => {
    const products = useLoaderData();
    const { register, handleSubmit } = useForm();
    const navigate = useNavigate();

    return (
        <form onSubmit={handleSubmit(data => navigate(`/admin/${data.id}`))}>
            <input {...register("id")} placeholder="Número de usuario"></input>
            <button type="submit">Mostrar mis productos</button>
        </form>
    );
}

export default Admin;