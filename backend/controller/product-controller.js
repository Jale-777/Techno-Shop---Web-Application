const conn = require('../connection');

const searchProducts = (req, res) => {

    const { id } = req.params;

    console.log(req.params.id, 'raw')
    let sql = 'SELECT * FROM product'
    if (parseInt(id) > 0) {
        sql += ` WHERE category_id = ${id}`
    }
    conn.query(sql, (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const deleteProduct = (req, res) => {
    const { id } = req.params;
    const sql = "DELETE FROM product WHERE id = ?"
    conn.query(sql, [id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ msg: "Produkt uspješno obrisan" })
    })
}

const createProduct = (req, res) => {
    const { name, price, discount, description, category_id, defaultImage, image1, image2, image3 } = req.body;
    const sql = "INSERT INTO product(name, price, discount, description, category_id, defaultImage, image1, image2, image3) values(?, ?, ?, ?, ?, ?, ?, ?, ?)"
    conn.query(sql, [name, price, discount, description, category_id, defaultImage, image1, image2, image3], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ id: results.insertId });
    })
}

const updateProduct = (req, res) => {
    const id = +req.params.id
    const { name, price, discount, description, category_id, defaultImage, image1, image2, image3 } = req.body;
    const sql = "UPDATE product SET name = ?, price = ?, discount = ?, description = ?, category_id = ?, defaultImage = ?, image1 = ?, image2 = ?, image3 = ? WHERE id = ?"
    conn.query(sql, [name, price, discount, description, category_id, defaultImage, image1, image2, image3, id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const countProducts = (req, res) => {
    const sql = "SELECT count(1) as numberOfProducts from product"
    conn.query(sql, (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results[0] || {})
    })
}

const homeProducts = (req, res) => {
    conn.query("SELECT * FROM product LIMIT 4", (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const homeProducts2 = (req, res) => {
    conn.query("SELECT * FROM product LIMIT 4, 5", (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const getProductById = (req, res) => {
    const { id } = req.params
    conn.query("SELECT * FROM product where id = ?", [id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results[0] || {})
    })
}

const searchBarProducts = (req, res) => {
    const { name } = req.params;
    const sql = `SELECT * FROM product WHERE UCASE (name) LIKE "%${name}%"`;

    conn.query(sql, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json(err);
            throw err;
        }
        res.status(200).json(result);
    });
};

module.exports = {
    searchProducts,
    createProduct,
    deleteProduct,
    updateProduct,
    countProducts,
    homeProducts,
    homeProducts2,
    getProductById,
    searchBarProducts
}