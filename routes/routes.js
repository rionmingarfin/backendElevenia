'use strich'

module.exports  = function (app){
   
    const product = require('../controller/product')
    const user = require('../controller/user')
    const auth = require('../controller/auth')
    const multer = require('multer');
    const upload = multer();
    // //routes product
    // app.get('/api/v2',product.getAll)
    app.post('/api/v2/product',upload.any(),product.addProduct)
    // app.patch('/api/v2/:id',auth,product.update)
    // app.delete('/api/v2/:id',auth,product.delete)
     app.get('/api/v2/product',product.getElevenia)

    //user
    app.post('/api/v3/register',user.insert)
    app.post('/api/v3/login',user.login)
    
}