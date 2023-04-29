CREATE DATABASE redlock;

USE redlock;

CREATE TABLE users (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nama VARCHAR(50) NOT NULL,
  Alamat VARCHAR(100) NOT NULL,
  Jabatan VARCHAR(50) NOT NULL
);

INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('John Doe', 'Jl. Jend. Sudirman No. 123', 'Manager');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Jane Doe', 'Jl. Gatot Subroto No. 456', 'Supervisor');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Alice Smith', 'Jl. Thamrin No. 789', 'Staff');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Bob Johnson', 'Jl. MH Thamrin No. 456', 'Staff');


