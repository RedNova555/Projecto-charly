var mysql = require("mysql");
var express = require("express");
// console.log("hello world");

var app = express();

app.get("/", function (req, res) {
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "videojuegos",
  });

  con.connect(function (err) {
    if (err) {
      throw err;
    }

    var sql = "SELECT * FROM usuarios";

    con.query(sql, function (err, result) {
      if (err) {
        throw err;
      }

      res.send(result);

      con.end();
    });
  });
});

app.listen(3000);
