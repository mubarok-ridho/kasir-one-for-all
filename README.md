# 🏪 Casheer POS - Microservices Umbrella Repository

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Go Version](https://img.shields.io/badge/Go-1.21+-00ADD8.svg)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15+-336791.svg)
![RabbitMQ](https://img.shields.io/badge/RabbitMQ-3.x-FF6600.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## 📋 Deskripsi

Repository ini adalah **umbrella repository** yang menampung semua microservice untuk aplikasi **Casheer POS** (Point of Sale). Repository ini berfungsi sebagai entry point untuk mengelola, menjalankan, dan mengembangkan semua service secara terintegrasi.

Casheer POS adalah aplikasi kasir modern yang dirancang untuk UMKM dengan fitur lengkap termasuk manajemen menu, pencatatan transaksi, laporan keuangan, dan cetak nota via Bluetooth.


## ✨ Fitur Utama

### 🔐 **Auth Service**
- Manajemen tenant (toko)
- Registrasi dan login user
- Setup profil toko
- Upload logo toko ke Cloudinary
- JWT authentication

### 🍽️ **Menu Service**
- CRUD menu makanan/minuman
- Upload gambar menu (Cloudinary)
- Variasi menu (ukuran, level, dll)
- Manajemen stok
- Pencatatan order/transaksi
- Best seller analytics

### 📊 **Report Service**
- Laporan harian, bulanan, tahunan
- Pencatatan pengeluaran (opex)
- Kalkulasi revenue dan profit
- Template nota (58mm / 80mm)
- Cetak nota via Bluetooth printer
- Support ESC/POS protocol

## 🛠️ Teknologi yang Digunakan

| Komponen | Teknologi |
|----------|-----------|
| **Backend** | Go 1.21, Fiber v2 |
| **Database** | PostgreSQL 15 |
| **Message Broker** | RabbitMQ |
| **Storage Gambar** | Cloudinary |
| **Printer** | Bluetooth + ESC/POS |
| **Container** | Docker, Tilt |
| **Orkestrasi** | Kubernetes (optional) |
| **Authentication** | JWT, bcrypt |


## 🚀 Cara Menjalankan

### Prerequisites
- Go 1.21 atau lebih baru
- Docker & Docker Compose
- RabbitMQ
- Tilt 
- PostgreSQL (jika tidak pakai Docker)
- Git