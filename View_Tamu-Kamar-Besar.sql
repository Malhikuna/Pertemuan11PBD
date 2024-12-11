/* VIEW Tamu yang stay di kamar besar */

CREATE VIEW ViewKamarBesar AS
SELECT T.Nama, KT.KategoriKamar FROM Tamu AS T
INNER JOIN Pemesanan AS P ON T.TamuID = P.TamuID
INNER JOIN Kamar AS K ON P.KamarID = K.KamarID
INNER JOIN Kategori AS KT ON K.KategoriID = KT.KategoriID
WHERE KategoriKamar= 'Kamar Besar';

SELECT * FROM ViewKamarBesar