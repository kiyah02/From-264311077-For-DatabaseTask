CREATE TABLE PENGGUNA (
    id_pengguna    INT AUTO_INCREMENT PRIMARY KEY,
    nama_pengguna  VARCHAR(100) NOT NULL,
    username       VARCHAR(50)  NOT NULL UNIQUE,
    password       VARCHAR(255) NOT NULL,
    role           ENUM('Admin_Sistem', 'Petugas_Lapangan', 'Operator', 'Koordinator') NOT NULL,
    email          VARCHAR(100) NOT NULL UNIQUE,
    no_telp        VARCHAR(20)
);


