var request = require('request'); //istek için kullanılır.
var bodyParser = require('body-parser');
var express = require('express'); //express yöntemi kullanılır.
var app = express(); //app oluşturulur.
app.get('/', function(req, res) { //get komutu ile istek alınır. kök dizininde işlenir.
    var url = `http://ezanvakti.herokuapp.com/ulkeler/`; //hocanın verdiği link url de tutulur.
    request(url, function(error, response, body) { //request işlemi için gerekli kontroller yapılır
        if (!error && (response.statusCode == 200)) //doğru çalıştığını gösterir.
        {
            webpack
        } else
            res.send('Veri yok.');
    });
});
app.listen(5000, function() { console.log('Node.js Web Server is Running at Port 5000.'); }); //dinleme yapılır.