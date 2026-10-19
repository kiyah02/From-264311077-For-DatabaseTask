SELECT nama_pengguna, nama_zona, COUNT(luas_lahan) as total_luas
FROM pengguna a
JOIN zona_lahan  b ON a.id_pengguna = b. id_zona
GROUP BY a.nama_pengguna
