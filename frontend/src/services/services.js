//const url = 'http://localhost:3000'
//api en backend
const url = 'http://127.0.0.1:8000/api' 


// PRODUCTS

export const getUser = async (id) => {
    const response = await fetch(`${url}/users/${id}`);
    const data = await response.json();
    return data;
}

export const getProducts = async () => {
    const response = await fetch(`${url}/products`);
    const data = await response.json();
    return data;
}

export const getProductById = async (id) => {
    const response = await fetch(`${url}/products/${id}`);
    const data = await response.json();
    return data;
}

export const deleteProduct = async (id) => {
    if (confirm("¿Estás seguro que quieres eliminar?") === true) {
        const response = await fetch(`${url}/products/${id}`, { method: "DELETE" });
        const data = await response.json();
        return data;
    } else
        return 0;
}

export const createProduct = async (newProduct) => {
    const response = await fetch(`${url}/products`, {
        method: "POST",
        headers: { "Content-type": "application/json" },
        body: JSON.stringify(newProduct)
    });
    const data = await response.json();
    return data;
}

// Petición PUT

export const updateProduct = async (id, modified) => {
    const response = await fetch(`${url}/products/${id}`, {
        method: "PUT",
        headers: { "Content-type": "application/json" },
        body: JSON.stringify(modified)
    });
    const data = await response.json();
    return data;
}

// USERS

export const getUsers = async () => {
    const response = await fetch(`${url}/users`);
    const data = await response.json();
    return data;
}

export const getUserById = async (id) => {
    const response = await fetch(`${url}/users/${id}`);
    const data = await response.json();
    return data;
}

//LOCATIONS

