/* Data Pelanggan CO diatas bulan Januari */
CREATE VIEW ViewPelangganCO_Mar AS 
SELECT T.Nama, P.CheckOut 
FROM Tamu AS T
INNER JOIN Pemesanan AS P ON T.TamuID = P.TamuID
where CheckOut BETWEEN '2023-03-01' AND '2023-03-31';

SELECT * FROM ViewPelangganCO_Mar;