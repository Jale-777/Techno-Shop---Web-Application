const mysql = require('mysql');

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'mysql.password_7',
    database: 'techno_shop'
});

conn.connect((err) => {
    if (err) throw err;
    console.log('Successfully connected');
})

module.exports = conn;