/* mengambil data karyawan yang status pembayarannya telah lunas */
CREATE VIEW ViewStatusPembayaranTelahLunas AS
SELECT T.Nama, PB.StatusPembayaran FROM Tamu AS T
INNER JOIN Pemesanan AS P ON T.TamuID = P.TamuID
INNER JOIN Pembayaran AS PB ON PB.PembayaranID = P.PemesananID
WHERE StatusPembayaran = 1; 

SELECT * FROM ViewStatusPembayaranTelahLunas;