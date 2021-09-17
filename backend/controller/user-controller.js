const conn = require('../connection');

const getUserById = (req, res) => {
    const { id } = req.params;
    conn.query(`SELECT * from USER where id = ?`, [id], (err, results) => {
        if (err) return res.status(500).send(err);
        res.status(200).json(results[0] || {});
    })
}

const saveUser = (req, res) => {
    const { first_name, last_name, username, email, address, password } = req.body;
    const sql = `INSERT INTO USER (username, email, first_name, last_name, address, password) VALUES(?,?,?,?,?,?)`
    conn.query(sql, [username, email, first_name, last_name, address, password], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ id: results.insertId });
    })
}

const loginUser = (req, res) => {
    const { email, password } = req.body;
    conn.query(`SELECT * from user where password = ? and (email = ? or username = ?)`, [password, email, email], (err, results) => {
        if (err) return res.status(500).send(err);
        res.status(200).json(results[0] || {});
    })
}

const clearBought = (req, res) => {
    const { id } = req.params;
    const sql = "DELETE FROM cart WHERE user_id = ? and status = 'DONE'"
    conn.query(sql, [id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json({ msg: "Lista kupljenih proizvoda obrisana" })
    })
}

const getAllUsers = (req, res) => {
    conn.query(`SELECT * from user`, (err, results) => {
        if (err) return res.status(500).send(err);
        res.status(200).json(results);
    })
}

const banUser = (req, res) => {
    const { id } = req.params;
    conn.query(`UPDATE user SET status = "BAN" WHERE id = ?`, [id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const activeUser = (req, res) => {
    const { id } = req.params;
    conn.query(`UPDATE user SET status = "ACTIVE" WHERE id = ?`, [id], (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results)
    })
}

const countUsers = (req, res) => {
    const sql = "SELECT count(1) as numberOfUsers from user"
    conn.query(sql, (err, results) => {
        if (err) return res.status(500).send(err)
        res.status(200).json(results[0] || {})
    })
}

module.exports = {
    getUserById, saveUser, clearBought, loginUser, getAllUsers, banUser, activeUser, countUsers
}