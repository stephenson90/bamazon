var mysql      = require('mysql');
var inquirer   = require('inquirer');

var connection = mysql.createConnection({
  host     : '127.0.0.1',
  user     : 'root',
  password : '@ITalia90',
  database : 'bamazonDB'
});

var UserQuant;
var sumOrder;
var res;
var proId;
var stockNbr;

connection.query('SELECT * FROM products', function (error, results) {


  if (error){throw error;} 
  //console.log('The solution is: ', results);
else{
	res=results;
  for(var i = 0; i<results.length; i++){
  	

  console.log( results[i].item_id + " "+results[i].product_name+" "+results[i].price);
  

}
stockNbr = res[proId].stock_quantity - UserQuant;
// connection.query('UPDATE products SET? WHERE?',[{
// 	stock_quantity:stockNbr},{item_id:proId}], function (error, results) {
// 	if(error){console.log("err");}

// 		else{
// 			console.log(results);
// 		}
// 		});
askQuestion();

}

  
});

connection.end();


 function askQuestion(){

	inquirer.prompt([
{
	type:"input",
	message:"what is the ID of the product that you would like to buy",
	name:"id"
},
{
	type:"input",
	message:"How many units would you like to buy?",
	name:"number"
}
]).then(function(answers){
	UserQuant = parseInt(answers.number);
	proId = parseInt(answers.id);

	if(UserQuant<=res[proId].stock_quantity){
		sumOrder=UserQuant*res[proId].price;
		console.log("Your total price for this order is: $"+sumOrder);
		
	}

	else{
		console.log(" Due to insuficient items available we are unable to place your order");
	}




});
}.then(update();)

function update(){
	var stockNbr = res[proId].stock_quantity - UserQuant;

	connection.query('UPDATE products SET? WHERE?',[{
	stock_quantity:stockNbr},{item_id:proId}], function (error, results) {
	if(error){console.log("err");}

		else{
			console.log(results);
		}


});
}
