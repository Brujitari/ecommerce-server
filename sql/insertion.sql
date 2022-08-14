DELETE FROM users
WHERE first_name = 'Nati';

DELETE FROM categories
WHERE name = 'hogar';

DELETE FROM products
WHERE ref = 'ygu';

DELETE FROM orders
WHERE product_id = (SELECT id FROM products WHERE name = 'papel');

DELETE FROM sells
WHERE ref = 'Nati';

INSERT INTO users (
  first_name, email, password, address, role
) VALUES (
  'Nati', 'bvhbcvjewb', '12345', 'bvyjgvde', 'client'
);

INSERT INTO sells (
  ref, user_id, delivery_date, receiving_date
) VALUES (
  'Nati', (SELECT id FROM users WHERE first_name= 'Nati'), '2022-12-12', '2022-12-12'
);

INSERT INTO categories (
  name
) VALUES (
  'Desktop'
);

INSERT INTO categories (
  name
) VALUES (
  'Phone'
);

INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'Mackbook Pro 131223', 'Mackbook Pro 13', 1300, 5, 'https://www.notebookcheck.org/fileadmin/Notebooks/News/_nc3/photo_1517336714731_489689fd1ca8_9.jpeg', 'El MacBook Pro de 13 pulgadas incluye el nuevo chip M2, que lo convierte en un titán. Ofrece hasta 20 horas de autonomía1 y un sistema de refrigeración activa para mantener un ritmazo incluso en tareas muy complejas', 5, (SELECT id FROM categories WHERE name = 'Desktop') 
);

INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'ygu', 'papel', 10, 25, 'bhwbdhj', 'bvhydbveukyv', 2, (SELECT id FROM categories WHERE name = 'hogar') 
);


INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'ygu', 'papel', 10, 25, 'bhwbdhj', 'bvhydbveukyv', 2, (SELECT id FROM categories WHERE name = 'hogar') 
);


INSERT INTO orders (
  quantity, user_id, product_id 
) VALUES (
  1, (SELECT id FROM users WHERE first_name= 'Nati'), (SELECT id FROM products WHERE name = 'papel')
);