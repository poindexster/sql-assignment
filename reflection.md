# Reflection

## 1. Penentuan Struktur Query

Dalam membangun solusi SQL, saya menentukan struktur query berdasarkan kompleksitas syntax dan readebility. Saya menggunakan CTE ketika query terbagi dalam beberapa tahap (misalnya agregas) agar alur logika mudah diuji. Subquery digunakan jika tujuan hanya satu tingkat transformasi sederhana. Window function dipilih saat saya membutuhkan perhitungan agregat tanpa menghilangkan baris detail (misalnya mencari nilai minimum per kelompok tetapi tetap mempertahankan seluruh data). Dengan mempertimbangkan hal ini, query menjadi lebih terstruktur, mudah dipelihara, dan dapat dioptimalkan sesuai kebutuhan.

---

## 2. Powerfull SQL Techniques

Teknik yang paling berdampak bagi saya adalah **window function** dan **range join**.  
Window function memungkinkan saya membandingkan data antar-baris dalam satu kelompok tanpa harus membuat subquery yang kompleks.  
Range join membantu saya memahami bahwa join tidak selalu berbasis kesamaan nilai, tetapi juga bisa berbasis rentang (misalnya pemetaan nilai ke grade).  

Teknik **nested aggregation** dan **CASE WHEN** sangat membantu dalam mengolah logika bisnis langsung di dalam query, seperti klasifikasi data dan filtre bersyarat.  
Semua teknik ini membuat saya lebih mampu menangani data yang kompleks seperti perhitungan performa, pemeringkatan, dan pemetaan kategori dalam kasus dunia nyata.
