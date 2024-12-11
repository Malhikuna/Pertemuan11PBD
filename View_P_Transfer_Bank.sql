/* mengambil data tamu yang metode pembayaran lewat TRANSFER BANK*/

CREATE VIEW ViewPembayaranlewatMetodeTeransferBank AS
SELECT T.Nama AS Tamu, M.MetodePembayaran FROM Tamu AS T
INNER JOIN Pemesanan AS P ON T.TamuID = P.TamuID
INNER JOIN Pembayaran AS PB ON PB.PembayaranID = P.PemesananID
INNER JOIN [Metode Pembayaran] AS M ON M.MetodeID = PB.MetodeID
WHERE [MetodePembayaran] = 'TRANSFER BANK';


SELECT * FROM ViewPembayaranlewatMetodeTeransferBank