'use strich'

module.exports  = function (app){
   
    const product = require('../controller/product')
    const user = require('../controller/user')
    const auth = require('../controller/auth')
    const multer = require('multer');
    const cart = require('../controller/cart')
    const transaksi = require('../controller/tarnsaction')

    //image
  const storage = multer.diskStorage({
    destination: function(req, file, callback) {
      callback(null, "./uploads");
    },
    filename: function(req, file, callback) {
      callback(null, file.originalname);
    }
  });

  let upload = multer({ storage: storage });
  //~image

    app.get('/',product.welcome)
    // //routes product
    app.get('/api/v3/product',product.getAll)
    app.get('/api/v3/product/:id',product.getProductId)
    app.post('/api/v3/product',upload.single("image"),auth,product.addProduct)
    app.patch('/api/v3/product/:id',upload.single("image"),auth,product.updateProduct)
    app.delete('/api/v3/product/:id',product.delete)
    app.get('/api/v3/product',auth,product.getElevenia)
    //transaksi
     app.post('/api/v3/transaksi',auth,transaksi.createtrnsaksi)
     app.get('/api/v3/history',auth,transaksi.getTransaksi)
    //Cart
    app.post('/api/v3/cart/:id_user',auth,cart.createCart)
    app.delete('/api/v3/cart/:id_user',auth,cart.deleteCart)
    app.get('/api/v3/cart/:id_user',auth,cart.getCart)
    //user
    app.post('/api/v3/register',user.insert)
    app.post('/api/v3/login',user.login)
    
}