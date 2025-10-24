
##  Deskripsi Singkat

Proyek ini merupakan implementasi tugas UTS mata kuliah **Manajemen Basis Data**, dengan tujuan mempraktikkan penggunaan **PostgreSQL**, **Docker**, serta **manajemen role dan hak akses (privileges)** pada sistem basis data.

Seluruh konfigurasi database dijalankan menggunakan **Docker Compose**, dan pengelolaan database dilakukan melalui **DBeaver** atau **pgAdmin**.

---

##  Struktur Folder

```
UTS-DB/
├── .env
├── .gitignore
├── docker-compose.yml
├── mbf_schema_salam.sql
└── README.md
```

---

##  Langkah Menjalankan Proyek

### 1️⃣ Menjalankan PostgreSQL via Docker

1. Pastikan **Docker Desktop** sudah aktif.
2. Buka terminal pada folder proyek (`UTS-DB/`).
3. Jalankan perintah berikut:

   ```bash
   docker compose up -d
   ```
4. Periksa container berjalan:

   ```bash
   docker ps
   ```

   Container bernama `postgres_raflhy` harus muncul.

---

### 2️⃣ Mengimpor Skema Database

1. Buka **DBeaver** dan koneksi ke database:

   * Host: `localhost`
   * Port: `22004` 
   * Database: `postgres`
   * Username: `postgres`
   * Password: `ifunggul`
2. Jalankan file `mbd_schema_salam.sql` untuk membuat:

   * Schema `SALAM`
   * Tabel `mahasiswas`
   * Data awal mahasiswa
   * User `backend_dev`, `bi_dev`, dan `data_engineer` dengan hak akses masing-masing

---

### 3️⃣ Hak Akses User

| User              | Role          | Hak Akses                                       |
| ----------------- | ------------- | ----------------------------------------------- |
| **backend_dev**   | Developer     | CRUD semua tabel di schema SALAM                |
| **bi_dev**        | BI Analyst    | Read-only (SELECT saja)                         |
| **data_engineer** | Data Engineer | CREATE, MODIFY, DROP objek dan CRUD semua tabel |

---


## 🧾 Daftar File Utama

| Nama File              | Deskripsi                                                               |
| ---------------------- | ----------------------------------------------------------------------- |
| `.env`                 | Berisi variabel environment seperti port, user, dan password PostgreSQL |
| `.gitigonre`           | untuk memberi tahu Git file atau folder mana yang tidak boleh di-track |
| `docker-compose.yml`   | Konfigurasi container PostgreSQL                                        |
| `mbd_schema_salam.sql` | Script pembuatan schema, tabel, dan data awal                           |                             
| `README.md`            | Dokumentasi proyek ini                                                  |

---

## 🧰 Teknologi yang Digunakan

* **PostgreSQL 12**
* **Docker Compose**
* **DBeaver / pgAdmin 4**


---


##  Kesimpulan

Proyek ini menunjukkan penerapan konsep **Database Security dan Role Management** pada PostgreSQL, di mana tiap user diberikan hak akses sesuai perannya.
Dengan konfigurasi Docker, database dapat dijalankan secara portabel dan mudah direplikasi di lingkungan lain.

---

