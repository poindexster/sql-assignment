# Reflection

## 1. Penentuan Struktur Query

Dalam mengerjakan setiap soal, saya menentukan struktur query berdasarkan kompleksitas masalah dan tujuan akhirnya.  
Saya menggunakan **CTE** jika solusi perlu dibagi menjadi beberapa tahap logis agar lebih mudah dibaca (readebility) dan diuji.  
Untuk kasus sederhana, saya menggunakan **subquery** langsung agar lebih ringkas. Sedangkan **window function** saya gunakan saat perlu menghitung nilai agregat tanpa menghilangkan detail baris (misalnya mencari nilai minimum per kelompok namun tetap menampilkan semua data).  

Pendekatan ini membantu saya menghasilkan query yang lebih terstruktur, lebih mudah di-debug, dan efisien karena setiap bagian query memiliki peran yang jelas.

---

## 2. Teknik SQL yang Paling Berdampak

Teknik yang paling berdampak bagi saya adalah **window function** dan **range join**.  
Window function memungkinkan saya membandingkan data antar-baris dalam satu kelompok tanpa harus membuat subquery yang kompleks.  
Range join membantu saya memahami bahwa join tidak selalu berbasis kesamaan nilai, tetapi juga bisa berbasis rentang (misalnya pemetaan nilai ke grade).  

Teknik **nested aggregation** dan **CASE WHEN** sangat membantu dalam mengolah logika bisnis langsung di dalam query, seperti klasifikasi data dan filtre bersyarat.  
Semua teknik ini membuat saya lebih mampu menangani data yang kompleks seperti perhitungan performa, pemeringkatan, dan pemetaan kategori dalam kasus dunia nyata.
