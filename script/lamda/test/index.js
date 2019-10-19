const { Pool, Client } = require('pg');
const connectionString =
  'postgresql://postgres:realmates@realmates.cxpasi3gtshb.ap-southeast-2.rds.amazonaws.com:5432/postgres';
const client = new Client({
  connectionString: connectionString
});
client.connect();

exports.handler = (event, context, callback) => {
  client.query('SELECT * FROM realmates.real_mate', (err, res) => {
    console.log(res.rows);
    return res.rows;
    client.end();
  });
};
