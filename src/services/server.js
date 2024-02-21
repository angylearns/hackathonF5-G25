const url = 'http://localhost:3000/products'

// Petición GET

export const getP = async () => {
    const response = await fetch(url);
    const data = await response.json();
    return data;
}

export const getById = async (id) => {
    const response = await fetch(`${url}/${id}`);
    const data = await response.json();
    return data;
}

// Petición DELETE

export const deleteP = async (id) => {
    if (confirm("¿Estás seguro que quieres eliminar?") === true) {
        const response = await fetch(`${url}/${id}`, { method: "DELETE" });
        const data = await response.json();
        return data;
    } else
        return 0;
}

// Petición POST

export const createP = async (newProduct) => {
    const response = await fetch(`${url}`, {
        method: "POST",
        headers: { "Content-type": "application/json" },
        body: JSON.stringify(newProduct)
    });
    const data = await response.json();
    return data;
}

// Petición PUT

export const updateP = async (id, modified) => {
    const response = await fetch(`${url}/${id}`, {
        method: "PUT",
        headers: { "Content-type": "application/json" },
        body: JSON.stringify(modified)
    });
    const data = await response.json();
    return data;
}