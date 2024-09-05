SELECT 
    r.reservasi_id, 
    p.nama AS nama_pelanggan, 
    k.jenis_kamar, 
    r.tanggal_check_in, 
    r.tanggal_check_out
FROM tb_reservasi_hotel r
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
JOIN tb_pelanggan p ON r.pelanggan_id = p.pelanggan_id
WHERE k.jenis_kamar = 'Deluxe'