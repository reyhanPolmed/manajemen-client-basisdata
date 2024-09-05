SELECT 
    r.reservasi_id, 
    p.nama AS nama_pelanggan, 
    k.jenis_kamar, 
    r.tanggal_check_in
FROM tb_reservasi_hotel r
JOIN tb_pelanggan p ON r.pelanggan_id = p.pelanggan_id
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
WHERE r.tanggal_check_in BETWEEN '2024-10-10' AND '2024-10-20'