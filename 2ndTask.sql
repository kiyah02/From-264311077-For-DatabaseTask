--Bagian INSERT
INSERT INTO PENGGUNA (nama_pengguna, username, password, role, email, no_telp) VALUES 
  ('Kiyah', 'just_kiyah', 'AAAAAAAAA', 'Admin_Sistem', 'kiyah@email.com', '0812344567890'); 
  ('Alex', 'AlexRBF', 'BBBBBBBBB', 'Admin_Sistem', 'kiyah@email.com', '0812344567890'); 
  ('Vintage', 'Oguri_Cap', 'CCCCCCCC', 'Admin_Sistem', 'kiyah@email.com', '0812344567890');

INSERT INTO ZONA_LAHAN (nama_zona, luas_lahan, jenis_tanaman) VALUES
  ('Barat', '30', 'Tomat');
  ('Timur', '30', 'Paprika');
  ('Selatan', '20', 'Cabai');

INSERT INTO LAPORAN (id_zona, id_pengguna, tanggal_laporan, ringkasan, rekomendasi) VALUES 
  ('3', '2', '2019-01-03', 'Tanah Tidak Subur', 'Pemupukan Segera'); 
  ('1', '3', '2019-07-22', 'Terlalu Banyak Hewan Hama', 'Gunakan Anti-Hama'); 
  ('2', '2', '2017-03-30', 'Kekeringan', 'Perlu Disiram Lebih Sering');

--Bagian READ
SELECT * FROM PENGGUNA
SELECT * FROM ZONA_LAHAN
SELECT * FROM LAPORAN
