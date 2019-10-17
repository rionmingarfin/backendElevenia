<h1 align="center">ExpressJS - backendElevenia RESTful API</h1>

<p align="center">
  <a href="https://nodejs.org/">
    <img alt="restfulapi" title="Restful API" src="https://cdn-images-1.medium.com/max/871/1*d2zLEjERsrs1Rzk_95QU9A.png">
  </a>
</p>
<br>
<br>

## GETTING STARTED
This is the rest of the application created with expres.js,
This application consists of transactions, history, get Elevenia data and enter Elevenia data to the local, CRUD Product with the condition sending a token in the header,and storage cloudinary

## software preparation needed
* postman
* web server (xampp)
* text editor (visual studio code) 
* crome

## add .env file
add the .env file to your project then copy the code below


``` 
NODE_ENV=development


 HOST_DB='localhost'
 USER_DB='root'
 PASSWORD_DB=''
 DATABASE_DB='elevenia'

 ALGORTIHM = 'aes-192-cbc'
 PASSWORD_ALGORITHM = 'd6F3Efeq'
 CLOUDINARY_CLOUD_NAME = "universitas-muhammadiyah-bengkulu"
 CLOUDINARY_API_KEY = "247622958413753"
 CLOUDINARY_API_SECRET = "H63x_mqO6MdcrhtHq0FCspYtMFs"
```

## how to run this application

 1. git clone https:https://github.com/rionmingarfin/backendElevenia.git
 2. open text editor
 3. run the web server and mysql application,example `xampp`
 4. import db elevenia in phpmyadmin
 5. open terminal in CMD or terminal text editor(visual studio code)
 6. type `npm install`
 7. tambahkan [.env](https://github.com/rionmingarfin/backendElevenia.git)
 8. type npm start
 9. open postman and run it with port `4000` 

###### note

- note before adding the env first

## endPoint LIST

###### 1.GET
- `/api/v3/product`
- `/api/v3/product/:id` (product by id)
- `/api/v3/productElvenia`(with header)
- `/api/v3/history` (with id)
- `/api/v3/cart/:id_user` (chart by id with header)
- `/` (welcome to express)

###### 2.POST
- `/api/v3/product`(with haeder)
- `/api/v3/transaksi`(with header)
- `/api/v3/cart/:id_user`(with header)
- `/api/v3/register`
- `/api/v3/login`


###### 3.PATCH
- `/api/v3/product/:id`(with header)
- `/notes/:id`


###### 4.DELETE
- `/api/v3/product/:id` (delete by id)
- `/api/v3/cart/:id_user` (delete by id)

## PHOTO EXPLANATION
- add cart(Put the items in the basket before the transaction)
- add product(Insert photos with cloudinary storage)
- getData elevenia(when running this endpoint elevenia data automatically enters local)
- hiostory(history transaction)
-transcation(making transactions and funds to users automatically reduced based on the total purchase price)

## Screenshot from the app
<p align='center'>
  <span>
  <img src='https://user-images.githubusercontent.com/43402837/66977503-6d5a2980-f0d0-11e9-910b-548e1bb8a983.png' width=200 />'
  <img src='https://user-images.githubusercontent.com/43402837/66977519-7c40dc00-f0d0-11e9-8d44-37831a59c4c7.png' width=200 />
  <img src='https://user-images.githubusercontent.com/43402837/66977526-81059000-f0d0-11e9-981e-178784752749.png' width=200 />
  <img src='https://user-images.githubusercontent.com/43402837/66977534-895dcb00-f0d0-11e9-8e20-a43ef8f3fe6e.png' width=200 />
  <img src='https://user-images.githubusercontent.com/43402837/66977531-85ca4400-f0d0-11e9-859b-6392c3eb0948.png' width=200 />
  </span>
</p>
