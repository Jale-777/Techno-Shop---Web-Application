const express = require('express');
const app = express();
const cors = require("cors");
const PORT = 3000;

const { getUserById, saveUser, loginUser, getAllUsers, activeUser, banUser, countUsers, clearBought } = require('./controller/user-controller');
const { createProduct, searchProducts, searchBarProducts, deleteProduct, updateProduct, countProducts, homeProducts, homeProducts2, getProductById } = require('./controller/product-controller');
const { getCategories } = require('./controller/category-controller');
const { addToCart, buyFromCart, removeFromCart, allBoughtProducts, getProductsFromUserCart, getCartCount } = require('./controller/cart-controller');
const { removeFromFavorites, addToFavorites, getProductsFromUserFavorites, getFavoritesCount } = require('./controller/favorite-controller');

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    res.status(200).send('Hello from TechnoShop App')
});

/* User API start */
app.get('/getUserById/:id', getUserById);
app.post('/registration', saveUser);
app.post('/login', loginUser);
app.get("/getAllUsers", getAllUsers);
app.put("/banUser/:id", banUser);
app.put("/activeUser/:id", activeUser);
app.get('/countUsers', countUsers);
app.delete('/clearBought/:id', clearBought);
/* User API end */

/* Product API start */
app.get('/searchProducts/:id', searchProducts);
app.get('/getProductById/:id', getProductById);
app.get('/homeProducts', homeProducts);
app.get('/homeProducts2', homeProducts2);
app.get('/countProducts', countProducts);
app.post("/createProduct", createProduct);
app.delete("/deleteProduct/:id", deleteProduct);
app.put("/updateProduct/:id", updateProduct);
app.get("/search-bar-products/:name", searchBarProducts)
/* Product API end */

/* Category API start */
app.get('/getCategories', getCategories);
/* Category API end */

/* Cart API start */
app.post("/addToCart", addToCart);
app.get("/getProductsFromUserCart/:id", getProductsFromUserCart);
app.put("/buyFromCart/:user_id", buyFromCart);
app.get("/allBoughtProducts/:user_id", allBoughtProducts);
app.delete("/remove/:product_id/:user_id", removeFromCart);
app.get("/getCartCount/:user_id", getCartCount);
/* Cart API end */

/* Favorite API start */
app.post("/addToFavorites", addToFavorites);
app.get("/getProductsFromUserFavorites/:id", getProductsFromUserFavorites);
app.delete("/removeFromFavorites/:product_id/:user_id", removeFromFavorites);
app.get("/getFavoritesCount/:user_id", getFavoritesCount);
/* Favorite API end */

app.listen(PORT, () => console.log(`Application started on port ${PORT}`));