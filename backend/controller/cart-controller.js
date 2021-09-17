const conn = require("../connection")

const addToCart = (req, res) => {
    const { user_id, product_id } = req.body;
    const sql = "INSERT INTO cart (user_id, product_id, status) values(?, ?, 'Pending')"
    conn.query(sql, [user_id, product_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ id: results.insertId })
    })
}

const getProductsFromUserCart = (req, res) => {
    const { id } = req.params
    const sql = "SELECT p.* from cart c join product p on c.product_id = p.id where user_id = ? and status = 'Pending'"
    conn.query(sql, [id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const removeFromCart = (req, res) => {
    const { product_id, user_id } = req.params;
    const sql = "DELETE FROM cart WHERE product_id = ? and user_id = ? LIMIT 1"
    conn.query(sql, [product_id, user_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ msg: "Proizvod uklonjen iz korpe" });
    })
}

const buyFromCart = (req, res) => {
    const { user_id } = req.params;

    let sql = "UPDATE cart SET status='DONE' WHERE user_id = ?"

    conn.query(sql, [user_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ msg: "Proizvod uspješno kupljen" });
    })
}

const allBoughtProducts = (req, res) => {
    const { user_id } = req.params;
    const sql = "SELECT name, price, discount, defaultImage FROM cart ct JOIN product c ON ct.product_id = c.id WHERE status ='DONE' and user_id = ?;"
    conn.query(sql, [user_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const getCartCount = (req, res) => {
    const { user_id } = req.params;
    const sql = "SELECT count(1) as numberOfCartProducts from cart WHERE status = 'PENDING' AND user_id = ?"
    conn.query(sql, [user_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results[0] || {})
    })
}

module.exports = {
    addToCart,
    getProductsFromUserCart,
    removeFromCart,
    buyFromCart,
    allBoughtProducts,
    getCartCount
}