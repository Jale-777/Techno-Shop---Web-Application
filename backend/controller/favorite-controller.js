const conn = require("../connection")

const addToFavorites = (req, res) => {
    const { user_id, product_id } = req.body;
    const sql = "INSERT INTO favorite (user_id, product_id) values(?, ?)"
    conn.query(sql, [user_id, product_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ id: results.insertId })
    })
}

const getProductsFromUserFavorites = (req, res) => {
    const { id } = req.params
    const sql = "SELECT p.* from favorite c join product p on c.product_id = p.id where user_id = ?"
    conn.query(sql, [id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const removeFromFavorites = (req, res) => {
    const { product_id, user_id } = req.params;
    const sql = "DELETE FROM favorite WHERE user_id = ? and product_id = ? LIMIT 1"
    conn.query(sql, [user_id, product_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ msg: "Proizvod uklonjen iz omiljenih" });
    })
}

const getFavoritesCount = (req, res) => {
    const { user_id } = req.params;
    const sql = "SELECT count(1) as allFavoritesProducts FROM favorite WHERE user_id = ?"
    conn.query(sql, [user_id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results[0] || {})
    })
}



module.exports = {
    addToFavorites, getProductsFromUserFavorites, removeFromFavorites, getFavoritesCount
}