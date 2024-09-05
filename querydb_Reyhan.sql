-- mengambl data yang diinginkan menggunakan join table

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

-- mengambil data pelanggan berdasarkan jenis kamar 

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


-- mendapatkan total pendapatan dengan menjumlahkan total biaya dari seluruh pelanggan berdasarkan jenis kamar

SELECT 
    k.jenis_kamar, 
    SUM(r.total_biaya) AS total_pendapatan
FROM tb_reservasi_hotel r
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
GROUP BY k.jenis_kamar


-- mengambil data pelanggan yang melakukan reservasi pada kamar dengan harga Rp 1.500.000

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

-- mengambil data pelanggan yang melakukan check-in pada tanggal tertentu 

SELECT 
    r.reservasi_id, 
    p.nama AS nama_pelanggan, 
    k.jenis_kamar, 
    r.tanggal_check_in
FROM tb_reservasi_hotel r
JOIN tb_pelanggan p ON r.pelanggan_id = p.pelanggan_id
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
WHERE r.tanggal_check_in BETWEEN '2024-10-10' AND '2024-10-20'


