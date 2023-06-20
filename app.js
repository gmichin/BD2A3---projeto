const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();

const connection = mysql.createConnection({
  host: '127.0.0.1',
  port: 3306,
  user: 'gustavo',
  password: 'juliemei2014',
  database: 'trabalhoBD2A3',
});
app.use(cors());
app.get('/data', (req, res) => {
  const userSql = 'SELECT * FROM users';
  const carSql = 'SELECT * FROM cars';

  connection.query(userSql, (userError, userResults) => {
    if (userError) {
      console.error('Erro ao buscar dados dos usuários:', userError);
      res.status(500).json({ error: 'Erro ao buscar dados dos usuários' });
    } else {
      const users = userResults;

      connection.query(carSql, (carError, carResults) => {
        if (carError) {
          console.error('Erro ao buscar dados dos carros:', carError);
          res.status(500).json({ error: 'Erro ao buscar dados dos carros' });
        } else {
          const cars = carResults;

          const formattedUsers = users.map(user => ({
            usuario: user.usuario,
            endereco: user.endereco,
            cpf: user.cpf,
            cartao: user.cartao,
            senha: user.senha
          }));

          const formattedCars = cars.map(car => ({
            model: car.model,
            color: car.color,
            mileage: car.mileage,
            price: car.price,
            address: car.address,
            fuel: car.fuel,
            rating: car.rating,
            image: car.image
          }));

          const jsonData = {
            users: formattedUsers,
            cars: formattedCars
          };

          res.json(jsonData);
        }
      });
    }
  });
});

const port = 3000;
app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
