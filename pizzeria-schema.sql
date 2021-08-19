CREATE DATABASE pizzeria;
USE pizzeria;

CREATE TABLE pizzas(
    pizza_id INT AUTO_INCREMENT,
    pizza_type VARCHAR(40) NOT NULL,
    price DECIMAL NOT NULL,
    PRIMARY KEY (pizza_id)

);

CREATE TABLE orders(
    order_id INT AUTO_INCREMENT,
    data_booking DATETIME NOT NULL,
    fk_pizza_id INT,
    PRIMARY KEY (order_id),
    FOREIGN KEY (fk_pizza_id) REFERENCES pizzas(pizza_id)
);