'use strich'

const response = require('../response/response')
const connect = require('../database/connect')
const axios = require('axios')
var xml2js = require('xml2js');
const AWS = require('aws-sdk');

exports.welcome = (req, res) => {
    response.ok('welocme', res)
}
async function Products() {
    const config = {
        method: 'get',
        url:'http://api.elevenia.co.id/rest/prodservices/product/listing?page=1',
        headers: {'Content-Type': 'application/xml', 'Accept-Charset': 'utf-8','openapikey' : '721407f393e84a28593374cc2b347a98'}
    }
    let res = await axios(config)

    return res
}
async function Detail(id) {
    const config = {
        method: 'get',
        url:`http://api.elevenia.co.id/rest/prodservices/product/details/${id}`,
        headers: {'Content-Type': 'application/xml', 'Accept-Charset': 'utf-8','openapikey' : '721407f393e84a28593374cc2b347a98'}
    }
    let res = await axios(config)
    
    var parser = new xml2js.Parser()
    var x = []
    var hasil = ''
    parser.parseString(res.data, function (err, result) {
        hasil = result['Product']
        x = [hasil.htmlDetail[0],hasil.prdImage01[0]]
    })
    return x

}
exports.getElevenia = async (req,res) =>{
  var data = await Products()

    var parser = new xml2js.Parser()

    var x = []
    var hasil = ''
    parser.parseString(data.data, async function (err, result) {
        hasil = result['Products']['product']
        for(var i = 0; i<hasil.length; i++){
            var det = await Detail(hasil[i].prdNo[0])
            x[i] = [hasil[i].prdNo[0],hasil[i].prdNm[0], hasil[i].sellerPrdCd[0], hasil[i].selPrc[0], det]

            if (i == hasil.length - 1 ) {
                res.json({data : x})
            }
        }
    })

    

}
exports.getAll = (req, res) => {
    connect.query(
        'SELECT * FROM product',
        function (error, rows, field) {
            if (error) {
                res.status(400).json('error')
            } else {
                res.json(rows)
            }
        }
    )
}
exports.insert = (req, res) => {
    const category_id = req.body.category_id
    const name = req.body.name
    const price = req.body.price
    const total = req.body.total

    connect.query(
        'INSERT INTO product SET category_id=?,name=?,price=?,total=?',
        [category_id, name, price, total],
        function (error, rows, field) {
            if (error) {
                res.status(400).json('error')
            } else {
                let id = rows.insertId
                const data = {
                    status: 202,
                    message: 'insert data succesfully',
                    result: {
                        id: id,
                        category_id: category_id,
                        name: name,
                        price: price,
                        total: total
                    }
                }
                res.status(202).json(data).end()
            }
        }
    )
}

exports.update = (req, res) => {
    const id = req.params.id
    const category_id = req.body.category_id
    const name = req.body.name
    const price = req.body.price
    const total = req.body.total

    connect.query(
        'UPDATE product SET category_id=?,name=?,price=?,total=? WHERE id=?',
        [category_id, name, price, total, id],
        function (error, rows, field) {
            if (error) {
                res.status(400).json('error')
            } else {
                connect.query(
                    'SELECT category.name FROM category WHERE category.id=?',
                    [category_id],
                    function (error, rowsegCategory, field) {
                        if (error) {
                            res.status(202).json('error category')
                        } else {
                            const category = rowsegCategory
                            const data = {
                                status: 202,
                                message: 'update data succesfully',
                                result: {
                                    id: id,
                                    category_id: category_id,
                                    category_name: category[0].name,
                                    name: name,
                                    price: price,
                                    total: total
                                }
                            }
                            res.status(202).json(data).end()
                        }
                    }
                )
            }
        }
    )
}

exports.delete = (req, res) => {
    const id = req.params.id
    if (id === 0 || id === '') {
        response.error('error',res)
    } else {
        connect.query(
            'DELETE FROM product WHERE id=?',
            [id],
            function (error, rows, field) {
                if (error) {
                    res.status(202).json('error')
                } else {
                    if (rows.affectedRows === 0 || rows.affectedRows ==='') {
                        response.error('error',res)
                    }else { 
                    const data = {
                        status : 202,
                        message : 'delete data succesfully',
                        result : {
                            id : id
                        }
                    }
                    return res.status(202).json(data).end()
                    }
                }
            }
        )
    }
}
exports.addProduct = (req, res) => {
    const s3 = new AWS.S3({
        accessKeyId: 'AKIAJ33MEDCNYMYNPFVQ',
        secretAccessKey: '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'
    })
    let file = req.files[0];
    const params = {
        Bucket: 'e-tiket',
        Key: `${new Date().getTime()}-${file.originalname}`,
        Body: req.files[0].buffer,
        ACL: 'public-read',
        ContentType: file.mimetype
    };
    let id_admin = req.body.id_admin
    let prdNm = req.body.prdNm;
    let sellerPrdCd = req.body.sellerPrdCd;
    let selPrc = req.body.selPrc;
    let description = req.body.description;
    let prdImage01 = req.body.prdImage01;
    s3.upload(params, function (err, data) {
        console.log(data)
        if (err) {
            console.log(err)
        }else{
            console.log(data)
            connect.query(
                `INSERT INTO product SET id_admin=?,name=?,price=?,code=?,description=?,image=${data.Location}`,
                [id_admin, prdNm , selPrc ,sellerPrdCd, description, prdImage01],
                function (error, rows, field) {
                    if (error) {
                        res.status(400).json('eror')
                    } else {
                        let idInsert = rows.insertId
                        let data = {
                            status: 201,
                            message: "data sucesfully",
                            result: {
                                id: idInsert,
                                id_admin: id_admin,
                                prdNm : prdNm,
                                sellerPrdCd : sellerPrdCd,
                                selPrc : selPrc,
                                description : description,
                                prdImage01 : prdImage01
                
                            }
                        }
                        return res.status(202).json(data).end();
                    }
                }
            )
        }
    })
}