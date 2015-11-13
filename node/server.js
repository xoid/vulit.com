var express = require('express');
var app = express();
var fs = require("fs");

app.get('/listPosts', 	function (req, res) 
			{
			   fs.readFile( __dirname + "/" + "posts.json", 'utf8', function (err, data) 
										{
									           console.log( data );
									           res.end( data );
										}
					);
			}
	)

var server = app.listen(8081, 	function () 
				{
				      var host = '127.0.0.1'
				      var port = server.address().port
				      console.log("Example app listening at http://%s:%s", host, port)
				}
			)
