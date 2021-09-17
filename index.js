let express = require('express');
let app = express();
const port = process.env.PORT || 3000;
const { Pool } = require('pg')

const pool = new Pool({
  user: process.env.POSTGRES_USER,
  database: process.env.POSTGRES_DB,
  password: process.env.POSTGRES_PASSWORD,
  host: process.env.HOST,
  port: 5432
});

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(express.static('public'))
app.set('view engine', 'ejs');

console.log('hi');

app.get('/', (req, res) => {
  pool.query('SELECT * FROM chores ORDER BY due_date', (err, chores) => {
    res.render('index', {chores: chores.rows});
  });
});

app.post('/done', (req, res) => {
  pool.query('UPDATE chores SET done_at = NOW() WHERE id = $1', [req.body.id], (err, result) => {
    res.send('Success');
  });
});

app.listen(port);
console.log('Server running on','https://localhost:3000')
