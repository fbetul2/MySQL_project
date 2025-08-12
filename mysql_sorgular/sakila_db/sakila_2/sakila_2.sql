#Film isimlerini alfabetik sırayla getirelim.
SELECT 
    title
FROM
    film
ORDER BY title ASC;

#En pahalı 5 filmi fiyatına göre getirelim.
SELECT 
    title, rental_rate
FROM
    film
ORDER BY rental_rate DESC
LIMIT 5;

# Film ve kategori isimlerini INNER JOIN ile getirelim.
SELECT 
    f.title, c.name AS category
FROM
    film f
        JOIN
    film_category fc ON f.film_id = fc.film_id
        JOIN
    category c ON fc.category_id = c.category_id;

# Müşteriler ve yaptığı ödemeler.
SELECT 
    f.title, c.name AS category
FROM
    film f
        JOIN
    film_category fc ON f.film_id = fc.film_id
        JOIN
    category c ON fc.category_id = c.category_id;

# Müşteri isimlerini ve oyuncu isimlerini birleştirelim.
SELECT 
    first_name, last_name
FROM
    customer 
UNION SELECT 
    first_name, last_name
FROM
    actor;


# En uzun 10 filmi getirelim.
SELECT 
    title, length
FROM
    film
ORDER BY length DESC
LIMIT 10;