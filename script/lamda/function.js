const { Pool, Client } = require('pg');
const connectionString =
 'postgresql://postgres:realmates@realmates.cxpasi3gtshb.ap-southeast-2.rds.amazonaws.com:5432/postgres';
exports.handler = async (event) => {
 const { Client } = require('pg')  //  Needs the nodePostgres Lambda Layer
 const client = new Client({
     connectionString: connectionString
 })
 await client.connect()


 const res = await client.query('SELECT * FROM realmates.real_mate')
 console.log(res.rows)
 await client.end()

 const response = {
     statusCode: 200,
     result: res.rows
 };
 return response;
};