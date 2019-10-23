'use strich'
require('dotenv/config')
const crypto = require('crypto')
const algorithm = process.env.ALGORTIHM
const connect = require('../database/connect')
const jwt = require('jsonwebtoken')
const response = require('../response/response')

function encrypt(text) {
    const key = crypto.scryptSync(text, 'salt', 24);
    const iv = Buffer.alloc(16, 0);
    const cipher = crypto.createCipheriv(algorithm, key, iv);
    var crypted = cipher.update(text, 'utf8', 'hex')
    crypted += cipher.final('hex');
    return crypted;
}
exports.insert = (req, res) => {
    const username = req.body.username
    const email = req.body.email
    const password = encrypt(req.body.password)

    connect.query(
        `SELECT * from user where username=\'${username}\' LIMIT 1`,
        function (error, rows, field) {
            if (error) {
                res.status(400).json('error')
            } else {
                if (rows != '') {
                    return res.send({
                        message: 'Username is exist'
                    })
                } else {
                    connect.query(
                        `SELECT * from user where email=\'${email}\' LIMIT 1`,
                        function (error, rowss, field) {
                            if (error) {
                                res.status(400).json('email error')
                            } else {
                                if (rowss != '') {
                                    return res.send({
                                        message: 'Email has been registered'
                                    })
                                } else {
                                    connect.query(
                                        `INSERT INTO user SET username=?,email=?,password=?`,
                                        [username, email, password],
                                        function (error, rowsss, field) {
                                            if (error) {
                                                res.status(400).json('insert error')
                                            } else {
                                                connect.query(
                                                    `SELECT *  FROM user ORDER BY id DESC LIMIT 1`, function (error, rowssss, field) {
                                                        if (error) {
                                                            console.log(error);
                                                        } else {
                                                            return res.send({
                                                                data: rowssss,
                                                                message: "Data has been saved"
                                                            })
                                                        }
                                                    }
                                                )
                                            }
                                        }
                                    )
                                }
                            }
                        }
                    )
                }
            }
        }
    )
}

exports.login = function (req, res) {
    const username = req.body.username || '';
    const password = req.body.password || '0';
    let encrypted = encrypt(password)
    const query = `SELECT * FROM user WHERE username='${username}' AND password='${encrypted}'`;
    connect.query(
        query,
        function (error, rows, field) {
            console.log(query)
            if (error) {
                return res.send({
                    status: 403,
                    message: 'forbidden',
                })
            }
            else {
                if (rows != '') {
                    jwt.sign({ rows }, "secretKey", (err, token) => {
                        // console.log("token" + token)
                        return res.send({
                            status: 200,
                            data: rows,
                            token: token
                        })
                    });
                }
                else {
                    return res.send({
                        status: 403,
                        message: 'Incorrect username or password',
                    })
                }
            }
        }
    )
}
exports.getAll = (req, res) => {
    connect.query(
        'SELECT * FROM user ORDER BY id ASC',
        function (error, rows, field) {
            if (error) {
                res.status(400).json('error')
            } else {
                res.json(rows)
            }
        }
    )
}

exports.updateUser = async (req, res) => {
        let id = req.params.id
        let status = req.body.status

        let sqlupdate = `UPDATE user SET status=? WHERE id ='${id}'`
        console.log(sqlupdate)
        connect.query(sqlupdate, [status,id],
            function (error, rows, field) {
                // console.log(rows)
                if (error) {
                    // console.log(error)
                    res.status(400).json('eror')
                } else {
                    let data = {
                        status: 201,
                        message: "data sucesfully",
                        data: {
                            id: id,
                            status : status
                        }
                    }
                    return res.status(202).json(data).end();
                }
            }
        )
    }

    exports.getUserId = (req, res) => {
        let id = req.params.id;
        if (id === 0 || id === '') {
            response.error('error', res, 404)
        } else {
            connect.query(
                `SELECT * FROM user WHERE id=${id}`,
                [id],
                function (error, rows, field) {
                    if (error) {
                        res.status(400).json('eror')
                    } else {
                        if (rows.length === 0 || rows.length === '') {
                            response.error('data not found', res, 404);
                        } else {
                            res.status(200).json(rows);
                        }
                    }
                }
            )
        }
    }
