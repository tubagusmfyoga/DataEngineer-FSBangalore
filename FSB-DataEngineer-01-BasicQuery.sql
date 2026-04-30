--menampilkan semua kolom dari tabel
SELECT * FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`;

--menampilkan 3 kolom saja dari tabel trx_order
SELECT order_id, customer_id, order_date  FROM fullstack-bangalore-494812.pizza_transaction.trx_order;

--menampilkan membatasi hanya baris tertentu saja
SELECT * FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`
LIMIT 10;

--Menampilkan kolom hanya dari Urutan Kecil-Besar atau Awal-Akhir (Ascending)
SELECT * FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`
ORDER BY order_date ASC;

--Menampilkan kolom hanya dari Urutan Besar-Kecil atau Akhir-Awal (Descending)
SELECT * FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`
ORDER BY order_date DESC;

--Menampilkan Nilai Uinque pada kolom tertentu
SELECT DISTINCT is_complain FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`;

--Agregasi tanpa kelompokan tertentu tanpa mengganti kolom/alias
SELECT COUNT(order_id) FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`;

--Agregasi tanpa kelompokan tertentu dengan mengganti kolom/alias
SELECT COUNT(order_id) AS total_trx FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`;

--Agregasi dengan kelompokan tertentu
SELECT order_date, COUNT(order_id) AS total_trx FROM `fullstack-bangalore-494812.pizza_transaction.trx_order`
GROUP BY order_date;