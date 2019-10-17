'use strich'

const connect = require('../database/connect')

function getTime() {
	const today = new Date();
	const date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
	const time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
	const dateTime = date + ' ' + time;
	return dateTime;
}

exports.getTransaksi = function (req, res) {
	
	const code_order = req.query.code_order;

	const query = `SELECT user.id,user.username,transaction.code_order,product.code,transaction.total_product,
	transaction.total_product,transaction.total_price,transaction.status,transaction.date_checkout,
	product.product_no,product.name,product.description,product.image FROM transaction
	  JOIN user ON transaction.id_user=user.id
	  JOIN product ON transaction.id_product=product.id
	  WHERE code_order ='${code_order}'`;
	connect.query(
		query,
		function (error, rows, field) {
			if (error) {
				console.log(error);
			} else {
				console.log(code_order)
				if (rows != '') {
					return res.send({
						data: rows,
					})
				} else {
					return res.send({
						message: 'Data not found',
					})
				}

			}

		}

	)
}

exports.createtrnsaksi = function (req, res) {
	
	const id_user = req.body.id_user;
	const id_product = req.body.id_product;
	const total_product = req.body.total_product;
    const total_price = req.body.total_price;
    
	if (!id_user) {
		res.status(400).send('Id User is required');
	} else if (!id_product) {
		res.status(400).send('Id Product is required');
	} else if (!total_product) {
		res.status(400).send('Total Product is required');
	} else {
        const code_order = Math.random().toString(36).substring(2, 15);
		const dateTime = getTime();
		connect.query(`SELECT * FROM user WHERE id = ${id_user}`,
		function(error,rows,field){
			if (error) {
				res.send({message : error})
			}else{
				console.log('user',rows[0].wallet)
				if (rows[0].wallet < total_price) {
					res.send({message : "dana kurang"})
				}else{
					let dana = rows[0].wallet - total_price
					connect.query(
					`INSERT INTO transaction set code_order=\'${code_order}\', id_user=${id_user}, id_product=${id_product}, total_product=${total_product}, total_price=${total_price}, date_checkout='${dateTime}',status='pending'`,
						function (error, rows, field) {
							if(error){
					            console.log(error)
					        }else{
								connect.query(`UPDATE user SET wallet =${dana} WHERE id= ${id_user}`,
								function(error,rows,field){
									if (error) {
										res.send({
											message : "error update"
										})
									}else{
										return res.send({
											data:rows
										})
									}
								})
					        }
						}
					)
				}
			}
		})
	}
}