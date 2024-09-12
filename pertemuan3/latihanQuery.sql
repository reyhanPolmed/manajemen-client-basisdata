SELECT 
	tb_pelanggan.nama,
    tb_kamar.jenis_kamar,
    tb_kamar.kapasitas,
    tb_reservasi_hotel.tanggal_check_in,
    tb_reservasi_hotel.tanggal_check_out
FROM 
	tb_pelanggan
INNER JOIN 
	tb_reservasi_hotel
ON 
	tb_pelanggan.pelanggan_id = tb_reservasi_hotel.pelanggan_id
INNER join 
	tb_kamar
ON 
	tb_reservasi_hotel.kamar_id = tb_kamar.kamar_id
WHERE 
	tb_pelanggan.nama = "Budi Raharjo";