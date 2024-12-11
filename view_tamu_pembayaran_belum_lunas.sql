/* mengambil data karyawan yang status pembayarannya belum lunas */
CREATE VIEW ViewStatusPembayaranBelumLunas AS
SELECT T.Nama, PB.StatusPembayaran FROM Tamu AS T
INNER JOIN Pemesanan AS P ON T.TamuID = P.TamuID
INNER JOIN Pembayaran AS PB ON PB.PembayaranID = P.PemesananID
WHERE StatusPembayaran = 0; 

SELECT * FROM ViewStatusPembayaranBelumLunas;