import { useForm } from "react-hook-form";
import { useLoaderData, useNavigate } from "react-router-dom";

const Admin = () => {
    const products = useLoaderData();
    const { register, handleSubmit } = useForm();
    const navigate = useNavigate();

    return (
        <form   onSubmit={handleSubmit(data => navigate(`/admin/${data.id}`))}>
            <input style={{width: "50%", marginTop:"100px"}} {...register("id")} placeholder="Número de usuario"></input>
            <button style={{width: "50%", borderRadius:"10px", marginBottom:"100px"}} type="submit">Mostrar mis productos</button>
        </form>
    );
}

export default Admin;