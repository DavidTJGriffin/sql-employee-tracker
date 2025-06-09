const mysql = require('mysql2/promise');
// require('dotenv').config();

async function test() {
  try {
    const connection = await mysql.createConnection({
      host: process.env.DB_HOST || 'localhost',
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME
    });
    const [rows] = await connection.query('SELECT 1 + 1 AS result');
    console.log('Test query result:', rows[0].result);
    await connection.end();
    process.exit(0);
  } catch (err) {
    console.error('Database connection failed:', err);
    process.exit(1);
  }
}

test();