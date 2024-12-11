/* Data Pelanggan CO diatas bulan Januari */
CREATE VIEW ViewPelangganCO_Feb AS 
SELECT T.Nama, P.CheckOut 
FROM Tamu AS T
INNER JOIN Pemesanan AS P ON T.TamuID = P.TamuID
where CheckOut > '2023-01-30';

SELECT * FROM ViewPelangganCO_Feb;

