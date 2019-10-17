'use strich'

const response = require('../response/response')
const connect = require('../database/connect')
const axios = require('axios')
var xml2js = require('xml2js');
const isempty = require('lodash.isempty')
const cloudinary = require('cloudinary')

exports.welcome = (req, res) => {
    response.ok('welocme', res)
}
async function Products() {
    const config = {
        method: 'get',
        url: 'http://api.elevenia.co.id/rest/prodservices/product/listing?page=1',
        headers: {
            'Content-Type': 'application/xml',
            'Accept-Charset': 'utf-8',
            'openapikey': '721407f393e84a28593374cc2b347a98'
        }
    }
    let res = await axios(config)

    return res
}
async function Detail(id) {
    const config = {
        method: 'get',
        url: `http://api.elevenia.co.id/rest/prodservices/product/details/${id}`,
        headers: {
            'Content-Type': 'application/xml',
            'Accept-Charset': 'utf-8',
            'openapikey': '721407f393e84a28593374cc2b347a98'
        }
    }
    let res = await axios(config)

    var parser = new xml2js.Parser()
    var x = []
    var hasil = ''
    parser.parseString(res.data, function (err, result) {
        hasil = result['Product']
        x = [hasil.htmlDetail[0], hasil.prdImage01[0]]
    })
    return x

}
exports.getElevenia = async (req, res) => {
    var data = await Products()

    var parser = new xml2js.Parser()

    var x = []
    var hasil = ''
    parser.parseString(data.data, async function (err, result) {
        hasil = result['Products']['product']
        for (var i = 0; i < hasil.length; i++) {
            var det = await Detail(hasil[i].prdNo[0])

            x[i] = [hasil[i].prdNo[0], hasil[i].prdNm[0], hasil[i].sellerPrdCd[0], hasil[i].selPrc[0], hasil[i].ProductOptionDetails[0].stckQty[0], det]
            var sql = `INSERT INTO product SET product_no="${hasil[i].prdNo[0]}",name="${hasil[i].prdNm[0]}",price="${hasil[i].selPrc[0]}",code="${hasil[i].sellerPrdCd[0]}",stok="${hasil[i].ProductOptionDetails[0].stckQty[0]}",description="${det[0]}",image="${det[1]}"`

            console.log(sql)
            connect.query(sql)
            //           // connect.query(`
            //           // INSERT INTO product SET product_no='${hasil[i].prdNo[0]}',name='${hasil[i].prdNm[0]}',price='${hasil[i].selPrc[0]}',code='${hasil[i].sellerPrdCd[0]}',stok='${hasil[i].ProductOptionDetails[0].stckQty[0]}',description='${det[0]}',image='${det[1]}'`)

            //   }
            // if (i == hasil.length - 1 ) {
            //     res.json({data : x})
            // }
        }
        res.json({
            data: x
        })
    })
}
exports.getAll = (req, res) => {
    connect.query(
        'SELECT * FROM product ORDER BY id DESC',
        function (error, rows, field) {
            if (error) {
                res.status(400).json('error')
            } else {
                res.json(rows)
            }
        }
    )
}
exports.getProductId = (req, res) => {
    let id = req.params.id;
    if (id === 0 || id === '') {
        Response.error('error', res, 404)
    } else {
        connect.query(
            `SELECT product.id AS id_product,product.id_user AS id_user,product.product_no AS product_no,product.name AS name,product.price AS price,product.code AS code,product.stok AS stok,product.description AS description,product.image AS image
            FROM product 
            WHERE product.id=${id}`,
            [id],
            function (error, rows, field) {
                if (error) {
                    res.status(400).json('eror')
                } else {
                    if (rows.length === 0 || rows.length === '') {
                        Response.error('data not found', res, 404);
                    } else {
                        res.status(200).json(rows);
                    }
                }
            }
        )
    }
}
exports.delete = (req, res) => {
    const id = req.params.id
    const id_user = req.body.id_user

    connect.query(`SELECT * FROM product WHERE id_user='${id_user}'`,
        function (error, rows, field) {
            console.log(rows)
            if (rows.length != 0) {
                if (id === 0 || id === '') {
                    response.error('error', res)
                } else {
                    connect.query(
                        'DELETE FROM product WHERE id=?',
                        [id],
                        function (error, rows, field) {
                            if (error) {
                                res.status(202).json('error')
                            } else {
                                if (rows.affectedRows === 0 || rows.affectedRows === '') {
                                    response.error('not foound data ', res)
                                } else {
                                    const data = {
                                        status: 202,
                                        message: 'delete data succesfully',
                                        result: {
                                            id: id
                                        }
                                    }
                                    return res.status(202).json(data).end()
                                }
                            }
                        }
                    )
                }
            } else {
                res.send({
                    message: "anda bukan user product"
                })
            }
        })
}
exports.addProduct = async (req, res) => {

    let image = ''
    if (isempty(req.file)) {
        image = req.body.image
    } else {
        let path = req.file.path;
        let getUrl = async req => {
            cloudinary.config({
                cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
                api_key: process.env.CLOUDINARY_API_KEY,
                api_secret: process.env.CLOUDINARY_API_SECRET
            });

            let data;
            await cloudinary.uploader.upload(path, result => {
                const fs = require("fs");
                fs.unlinkSync(path);
                data = result.url;
            });
            return data;
        };

        image = await getUrl();
    }
    let id = req.body.id
    let product_no = Math.random().toString(36).substring(2, 15);
    let prdNm = req.body.prdNm;
    let selPrc = req.body.selPrc;
    let sellerPrdCd = Math.random().toString(36).substring(2, 15);
    let stok = req.body.stok;
    let description = req.body.description;

    if (!id) {
        res.status(400).send('Id User is required');
    } else if (!image) {
        res.status(400).send('image is required');
    } else {
        let sql2 = `INSERT INTO product SET id_user=?,product_no ='${product_no}' ,name=?,price=?,code='${sellerPrdCd}',stok=?,description=?,image=?`
        console.log(sql2)
        connect.query(
            sql2,
            [id, prdNm, selPrc, stok, description, image],
            function (error, rows, field) {
                console.log(rows)
                if (error) {
                    res.status(400).json('eror')
                } else {
                    let idInsert = rows.insertId
                    let data = {
                        status: 201,
                        message: "data sucesfully",
                        result: {
                            id: idInsert,
                            id: id,
                            prdNm: prdNm,
                            selPrc: selPrc,
                            sellerPrdCd: sellerPrdCd,
                            stok: stok,
                            description: description,
                            image: image
                        }
                    }
                    return res.status(202).json(data).end();
                }
            }
        )
    }
}

exports.updateProduct = async (req, res) => {

    let image = ''
    if (isempty(req.file)) {
        image = req.body.image
    } else {
        let path = req.file.path;
        let getUrl = async req => {
            cloudinary.config({
                cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
                api_key: process.env.CLOUDINARY_API_KEY,
                api_secret: process.env.CLOUDINARY_API_SECRET
            });

            let data;
            await cloudinary.uploader.upload(path, result => {
                const fs = require("fs");
                fs.unlinkSync(path);
                data = result.url;
            });
            return data;
        };

        image = await getUrl();
    }
    let id = req.params.id
    let product_no = Math.random().toString(36).substring(2, 15);
    let prdNm = req.body.prdNm;
    let selPrc = req.body.selPrc;
    let sellerPrdCd = Math.random().toString(36).substring(2, 15);
    let stok = req.body.stok;
    let description = req.body.description;

    if (!id) {
        res.status(400).send('Id is require');
    } else if (!image) {
        res.status(400).send('image is require');
    } else {
        let sqlupdate = `UPDATE product SET product_no ='${product_no}',name=?,price=?,code='${sellerPrdCd}',stok=?,description=?,image=? WHERE id ='${id}'`
        console.log(sqlupdate)
        connect.query(sqlupdate, [prdNm, selPrc, stok, description, image, id],
            function (error, rows, field) {
                // console.log(rows)
                if (error) {
                    // console.log(error)
                    res.status(400).json('eror')
                } else {
                    let data = {
                        status: 201,
                        message: "data sucesfully",
                        result: {
                            id: id,
                            prdNm: prdNm,
                            selPrc: selPrc,
                            sellerPrdCd: sellerPrdCd,
                            stok: stok,
                            description: description,
                            image: image
                        }
                    }
                    return res.status(202).json(data).end();
                }
            }
        )
    }
}