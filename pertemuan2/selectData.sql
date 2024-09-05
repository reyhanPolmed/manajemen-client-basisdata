SELECT 
    r.reservasi_id, 
    p.nama AS nama_pelanggan, 
    p.no_telepon,
    r.tanggal_check_in, 
    r.tanggal_check_out, 
    r.jumlah_kamar, 
    r.total_biaya
FROM tb_reservasi_hotel r
JOIN tb_pelanggan p ON r.pelanggan_id = p.pelanggan_id