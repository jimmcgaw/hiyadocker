var express = require('express');
var port = 8087;

var app = express();
app.get('/', function(request, response){
  response.send('You just deployed some node.js into Docker\n');
});

app.listen(port);
console.log('Running application on http://localhost:' + port.toString());
