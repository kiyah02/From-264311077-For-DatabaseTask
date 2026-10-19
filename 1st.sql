--Buat Tabell Pengguna
CREATE TABLE PENGGUNA (
    id_pengguna    INT AUTO_INCREMENT PRIMARY KEY,
    nama_pengguna  VARCHAR(100) NOT NULL,
    username       VARCHAR(50)  NOT NULL UNIQUE,
    password       VARCHAR(255) NOT NULL,
    role           ENUM('Admin_Sistem', 'Petugas_Lapangan', 'Operator', 'Koordinator') NOT NULL,
    email          VARCHAR(100) NOT NULL UNIQUE,
    no_telp        VARCHAR(20)
);

--Buat Tabel Tindakan
CREATE TABLE ZONA_LAHAN (
    id_zona        INT AUTO_INCREMENT PRIMARY KEY,
    nama_zona      VARCHAR(100) NOT NULL,
    luas_lahan     DECIMAL(10,2) NOT NULL,
    jenis_tanaman  VARCHAR(100) NOT NULL
);

--Buat Tabel Laporan
CREATE TABLE LAPORAN (
    id_laporan      INT AUTO_INCREMENT PRIMARY KEY,
    id_zona         INT NOT NULL,
    id_pengguna     INT NOT NULL,
    tanggal_laporan DATE NOT NULL,
    ringkasan       TEXT,
    rekomendasi     TEXT,
    CONSTRAINT fk_laporan_zona
        FOREIGN KEY (id_zona) REFERENCES ZONA_LAHAN(id_zona)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_laporan_pengguna
        FOREIGN KEY (id_pengguna) REFERENCES PENGGUNA(id_pengguna)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
