var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Turdsandwich2"
});

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
});



// con.connect(function (err) {
//     if (err) throw err;
//     console.log("Connected!");
//     con.query(sql, function (err, result) {
//         if (err) throw err;
//         console.log("Result: " + result);
//     });
// });
con.connect(function (err) {
    if (err) throw err;
    con.query("SELECT * FROM products", function (err, result) {
        if (err) throw err;
        console.log(result);
    });
});