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
CREATE TABLE TINDAKAN (
    id_tindakan      INT AUTO_INCREMENT PRIMARY KEY,
    id_peringatan    INT NOT NULL,
    id_pengguna      INT NOT NULL,
    jenis_tindakan   VARCHAR(100) NOT NULL,
    tanggal_tindakan DATE NOT NULL,
    keterangan       TEXT,
    CONSTRAINT fk_tindakan_peringatan
        FOREIGN KEY (id_peringatan) REFERENCES PERINGATAN(id_peringatan)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_tindakan_pengguna
        FOREIGN KEY (id_pengguna) REFERENCES PENGGUNA(id_pengguna)
        ON UPDATE CASCADE ON DELETE RESTRICT
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
