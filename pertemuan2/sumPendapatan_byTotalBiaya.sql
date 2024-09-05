SELECT 
    k.jenis_kamar, 
    SUM(r.total_biaya) AS total_pendapatan
FROM tb_reservasi_hotel r
JOIN tb_kamar k ON r.kamar_id = k.kamar_id
GROUP BY k.jenis_kamar