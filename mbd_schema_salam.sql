create schema SALAM;

-- Buat Tabel Mahasiswas Di skema salam --
create table SALAM.mahasiswas (
nim VARCHAR(12) primary key, --Ini yang menjadi primary key--
email VARCHAR(100) unique, --Ini yang menjadi unique constraint--
nama VARCHAR(250) not null,
angkatan INT check (angkatan > 2019) --check constraint--
);

insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('1237050004', 'raflhynr@gmail.com', 'raflhynr', 2023);
insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('1237050008', 'sinta@gmail.com', 'sinta', 2024);
insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('1237050006', 'ahmad@gmail.com', 'ahmad', 2017);


GRANT USAGE ON SCHEMA SALAM TO PUBLIC;
-- Izinkan schema diakses oleh semua user
GRANT USAGE ON SCHEMA SALAM TO backend_dev, bi_dev, data_engineer;

CREATE USER backend_dev WITH PASSWORD 'password_backend';
GRANT CONNECT ON DATABASE postgres TO backend_dev;
GRANT USAGE ON SCHEMA SALAM TO backend_dev;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA SALAM TO backend_dev;


CREATE USER bi_dev WITH PASSWORD 'pass_bi';
GRANT CONNECT ON DATABASE postgres TO bi_dev;
GRANT USAGE ON SCHEMA SALAM TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO bi_dev;

CREATE USER data_engineer WITH PASSWORD 'password_data';
GRANT CONNECT ON DATABASE postgres TO data_engineer;
GRANT CREATE ON SCHEMA SALAM TO data_engineer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA SALAM TO data_engineer;
ALTER TABLE SALAM.mahasiswas OWNER TO data_engineer;




SELECT * FROM SALAM.mahasiswas;
DELETE FROM SALAM.mahasiswas WHERE nim = '1237050004';
insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('1237050019', 'anton@gmail.com', 'Anton', 2025);
UPDATE SALAM.mahasiswas
SET angkatan = 2022
WHERE nim = '1237050019';


SELECT * FROM salam.mahasiswas;
insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('12370500123', 'yanto@gmail.com', 'yanto', 2021);

SELECT * FROM SALAM.mahasiswas;


-- Hapus 1 data
DELETE FROM SALAM.mahasiswas WHERE nim = '1237050008';
DROP TABLE SALAM.mahasiswas;

create table SALAM.mahasiswas (
nim VARCHAR(12) primary key, --Ini yang menjadi primary key--
email VARCHAR(100) unique, --Ini yang menjadi unique constraint--
nama VARCHAR(250) not null,
angkatan INT check (angkatan > 2019) --check constraint--
);


insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('1237050004', 'raflhynr@gmail.com', 'raflhynr', 2023);
insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('1237050008', 'sinta@gmail.com', 'sinta', 2024);
insert into SALAM.mahasiswas (nim, email, nama, angkatan) values ('1237050006', 'ahmad@gmail.com', 'ahmad', 2022);

UPDATE SALAM.mahasiswas
SET angkatan = 2021
WHERE nim = '1237050006';











