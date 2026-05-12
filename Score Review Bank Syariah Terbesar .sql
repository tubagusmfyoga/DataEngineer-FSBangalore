#Menentukan Score terbesar dan juga berdasarkan Jumlah Reviewnya
SELECT app_title, COUNT(app_title) AS jumlah_review, ROUND(AVG(score),2) AS rata_skor
FROM fullstack-bangalore-494812.review_gplay_bank_syariah.review_all_bank_syariah
GROUP BY app_title
ORDER BY AVG(score) DESC