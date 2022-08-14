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
  'desktop'
);

INSERT INTO categories (
  name
) VALUES (
  'phone'
);

INSERT INTO categories (
  name
) VALUES (
  'tablet'
);

INSERT INTO categories (
  name
) VALUES (
  'headphones'
);

INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'Mackbook Pro 131223', 'Mackbook Pro 13', 1300, 5, 'https://www.notebookcheck.org/fileadmin/Notebooks/News/_nc3/photo_1517336714731_489689fd1ca8_9.jpeg', 'El MacBook Pro de 13 pulgadas incluye el nuevo chip M2, que lo convierte en un titán. Ofrece hasta 20 horas de autonomía1 y un sistema de refrigeración activa para mantener un ritmazo incluso en tareas muy complejas', 5, (SELECT id FROM categories WHERE name = 'desktop') 
);

INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'Iphone 13 Pro13441', 'Iphone 13 Pro', 700, 10, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-family-hero?wid=940&hei=1112&fmt=png-alpha&.v=1644969385433', 'El iPhone 13 repite el diseño del iPhone 12, que a su vez era una inspiración del iPhone 5. Como tal, la parte trasera está hecha de cristal y los marcos, totalmente rectos, de aluminio. Personalmente, me gustaba más el diseño de los iPhone 11 en parte por sus marcos redondeados, ya que permiten un mejor agarre.', 4, (SELECT id FROM categories WHERE name = 'phone') 
);


INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'Legion 5i Pro Gen 615615', 'Legion 5i Pro Gen 6', 1100, 13, 'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MTI3MjA0fGltYWdlL3BuZ3xoYzkvaDQ4LzExNjQxNTE1OTMzNzI2LnBuZ3w2ZTg2YmY4MDA5YjM1NTlmZTllOTM2OWU3YTM2ZDkyMmYzMWNkZTIyYTg3NmE3M2YzZTcwNWRhMDQ4Y2RkNzRh/bWFzdGVyfH.png', 'Gaming will never be the same after experiencing 11th Generation Intel® Core™ H-Series processors. Play and stream the latest AAA Titles at their absolute best with up to 5GHz clock speeds on multiple cores, enhanced overclocking, 45 Watts of dedicated processing power, up to 8 cores and 24 MB of Intel® Smart Cache. Create and game like never before with Intel® Iris® Xe graphics and intelligent technologies like Intel® Thermal Velocity Boost (TVB), Intel® Dynamic Tuning and Improved Intel® Adaptix™ Technologies for optimized system performance. Experience lightning-fast Gigabit WiFi speeds and reliable connections with Intel® WiFi 6 (Gig+)*, nearly 3x faster WiFi with Intel® WiFi 6.', 3, (SELECT id FROM categories WHERE name = 'desktop') 
);

INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'Ipad Mini 614125', 'Ipad Mini 6', 499, 5, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/refurb-ipad-pro-11-wifi-spacegray-2020?wid=1150&hei=1150&fmt=jpeg&qlt=95&.v=1627667236000', 'El Apple iPad Mini 8.3 2021 WiFi 64GB blanco cuenta con una CPU Hexa-core, una de las más avanzadas en el mercado. El sistema operativo es iPadOS 15, actualizable a iPadOS 15.1. Si eres amante de la fotografía con este iPad podrás disfrutar de ellas en su pantalla de 8.3 pulgadas en alta resolución o realizarlas tu mismo con su cámara.', 4, (SELECT id FROM categories WHERE name = 'tablet') 
);

INSERT INTO products (
    ref, name, price, stock, img, details, rate, category_id
) VALUES (
    'Airpods121311', 'Airpods', 200, 5, 'https://imgs.search.brave.com/ozPSwgk_5shXCRQwd1nm6HTj-oXwaaOyumYD6iSxoIY/rs:fit:816:1200:1/g:ce/aHR0cHM6Ly93d3cu/YXBwbGUuY29tL25l/d3Nyb29tL2ltYWdl/cy9wcm9kdWN0L2Fp/cnBvZHMvc3RhbmRh/cmQvQXBwbGUtQWly/UG9kcy13b3JsZHMt/bW9zdC1wb3B1bGFy/LXdpcmVsZXNzLWhl/YWRwaG9uZXNfMDMy/MDIwMTlfYmlnLmpw/Zy5sYXJnZS5qcGc', 'El audio espacial con seguimiento dinámico de la cabeza convierte la música y las películas (o series) en una experiencia tridimensional. Sentirás que el sonido llega de todas partes a tu alrededor, como si estuvieras en medio de una sala de cine o tocaras en la propia orquesta', 5, (SELECT id FROM categories WHERE name = 'headphones') 
);

INSERT INTO orders (
  quantity, sell_id, product_id 
) VALUES (
  1, (SELECT id FROM sells WHERE user_id = (SELECT id FROM users WHERE first_name = 'Nati')), (SELECT id FROM products WHERE ref = 'Mackbook Pro 131223')
);