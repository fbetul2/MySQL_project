#payment tablosundaki toplam ödeme sayısını bul.
SELECT 
    COUNT(*) AS toplam_ödeme
FROM
    payment;

#film tablosundaki en yüksek kiralama ücretini (rental_rate) bul.
SELECT 
    MAX(rental_rate) AS en_yüksek_kiralama_ücreti
FROM
    film;

#film tablosundaki ortalama film uzunluğunu (length) bul.
SELECT 
    AVG(length) AS ortalama_uzunluk
FROM
    film;

#payment tablosundaki en küçük ödeme miktarını (amount) getir.
SELECT 
    MIN(amount) AS en_küçük_ödeme
FROM
    payment;

#payment tablosunda customer_id = 5 olan müşterinin toplam ödediği miktarı bul.
SELECT 
    COUNT(*) AS toplam_ödeme
FROM
    payment
WHERE
    customer_id = 5;

#film tablosundaki toplam film sayısını, her rating türüne göre gruplayarak listele.
SELECT 
    rating, COUNT(*) AS gruplara_göre
FROM
    film
GROUP BY rating;

#payment tablosunda her staff_id için toplam ödeme tutarını listele.
SELECT 
    staff_id, SUM(amount) AS toplam_odeme
FROM
    payment
GROUP BY staff_id;

#film tablosunda her rental_rate için ortalama film uzunluğunu bul.
SELECT 
    rental_rate, AVG(length) AS ortalama_uzunluk
FROM
    film
GROUP BY rental_rate;


#payment tablosunda her customer_id için en yüksek ödeme miktarını bul ve 10’dan büyük olanları getir.
SELECT 
    customer_id, MAX(amount) AS en_yüksek_odeme
FROM
    payment
GROUP BY customer_id
HAVING MAX(amount) < 10;


#payment tablosunda her customer_id için en yüksek ödeme miktarını bul ve 10’dan büyük olanları getir.
SELECT 
    customer_id, MAX(amount) AS en_yüksek_odeme
FROM
    payment
GROUP BY customer_id
HAVING MAX(amount) < 10;

#Payment tablosunda, toplam ödemesi 100’den fazla olan müşteri ID’lerini listele.
SELECT 
    customer_id, SUM(amount) AS toplam_ödeme
FROM
    payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

#Film tablosunda, ortalama film uzunluğu 110 dakikadan fazla olan rating türlerini listele.
SELECT 
    rating, AVG(length) AS ortalama_uzunluk
FROM
    film
GROUP BY rating
HAVING AVG(length) > 110;

# Payment tablosunda, toplam ödemesi 100’den fazla olan müşteri ID’lerini listele.
SELECT 
    customer_id, SUM(amount) AS toplam_ödeme
FROM
    payment
GROUP BY custoemr_id
HAVING SUM(amount) > 100;
SELECT c.first_name, p.amount
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id;



