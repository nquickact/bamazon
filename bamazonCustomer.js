var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "Turdsandwich2",
    database: "bamazon"
});



connection.connect(function (err) {
    if (err) throw err;
    connection.query("SELECT * FROM products", function (err, result, fields) {
        if (err) throw err;
        console.log(result);
        start();
    });
});
// var list = function (list) {
//     var query = connection.query(
//         "SELECT * from products",
//         {
//             item_id: list.item_id,
//             item_name: list.product_name,
//             department_name: list.department_name,
//             price: list.price,
//             quantity: list.stock_quantity
//         }
//     );
// console.log(list);
function start() {
    inquirer
        .prompt([
            {
                name: "item_id",
                type: "input",
                message: "What is the ID of the product you would like to purchase?",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }
            },
            {
                name: "stock_quantity",
                type: "input",
                message: "How many would you like to purchase?",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }
            }
        ])
        .then(function (answer) {
            var query = "UPDATE products SET products.stock_quantity=? WHERE products.item_id=?";
            connection.query(query, [answer.stock_quantity, answer.item_id], function (err, res) {
                console.log(err);
                console.log(
                    "ID: " +
                    res.item_id +
                    " || Name: " +
                    res.product_name +
                    " || Department: " +
                    res.department_name +
                    " || Price: " +
                    res.price +
                    " || Quantity" +
                    res.stock_quantity
                )
            });
        });
    }
