/* Data Pelanggan CO dibulan Januari */
CREATE VIEW ViewPelangganCO_Jan AS 
SELECT T.Nama, P.CheckOut 
FROM Tamu AS T
INNER JOIN Pemesanan AS P ON T.TamuID = P.TamuID
where CheckOut BETWEEN '2023-01-01' AND '2023-01-31' ;

SELECT * FROM ViewPelangganCO_Jan;