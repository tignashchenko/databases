var mysql = require('mysql');

var connection = mysql.createConnection({
  // host: 'http://127.0.0.1/3000',
  user: 'root',
  password: 'plantlife',
  database: 'chat'
});

connection.connect(function(err) {
  if (err) {
    throw err;
  }
  console.log('Connected to database.');
});



// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".


