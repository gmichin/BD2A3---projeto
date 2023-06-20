CREATE database trabalhoBD2A3;
USE trabalhoBD2A3;

CREATE TABLE users (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(255) NOT NULL,
  `endereco` VARCHAR(255) NOT NULL,
  `cpf` VARCHAR(14) NOT NULL,
  `cartao` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(20),
    color VARCHAR(20),
    mileage VARCHAR(50),
    price INT,
    address VARCHAR(50),
    fuel VARCHAR(50),
    rating DECIMAL(3,1),
    image VARCHAR(50)
);


INSERT INTO users (`usuario`, `endereco`, `cpf`, `cartao`, `senha`) VALUES
('Gustavo Massamichi Nakamura', 'Rua inventada, 000', '123.345.567-89', '2344 2342 43243 2334', 'gu1234'),
('Francisco', 'Rua pensada, 00', '987.765.543-21', '1234 4567 7891 1011', 'senhaFrancisco');

INSERT INTO cars (`model`, `color`, `mileage`, `price`, `address`, `fuel`, `rating`, `image`) VALUES
('HB20 (2019)', 'Preto', '50.000 km', 100, 'Av. Paulista, 900', '80%', 4.5, 'img/hb20.jpg'),
('Civic (2020)', 'Branco', '30.000 km', 150, 'Rua vergueiro, 1000', '100%', 4.2, 'img/civic.jpg'),
('Fusca (1959)', 'Prata', '40.000 km', 50, 'Av. Paulista, 52', '20%', 4.8, 'img/fusca.jpg');

select * from users;
select * from cars;