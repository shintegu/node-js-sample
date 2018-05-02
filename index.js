var express = require('express')
var pg = require('pg');
var app = express()
var cors = require('cors')
var CONSTANT = require('./constant.js')

app.set('port', (process.env.PORT || 5000))
app.use(express.static(__dirname + '/public'))

app.use(cors())


var config = {
  user: CONSTANT.DB_USERNAME,
  database: CONSTANT.DB_NAME,
  host: CONSTANT.DB_HOST,
  password: CONSTANT.DB_PASSWORD,
  port: CONSTANT.DB_PORT
};

console.log("config : " + JSON.stringify(config));

app.get('/', function(request, response) {

  response.send("<3 Hello <3");
})

app.get('/fact', function (request, response) {

  var pool = new pg.Pool(config);
  pool.query('select * from fact order by random() limit 1;', function (err, res) {
    if (err) throw err
    response.send(res.rows[0]);
  })
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})
