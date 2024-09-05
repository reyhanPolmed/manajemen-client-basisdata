SELECT 
    r.reservasi_id, 
    p.nama AS nama_pelanggan, 
    r.tanggal_check_in, 
    r.tanggal_check_out,
    k.harga_per_malam
FROM tb_reservasi_hotel r
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
JOIN tb_pelanggan p ON r.pelanggan_id = p.pelanggan_id
WHERE k.harga_per_malam = 1500000
