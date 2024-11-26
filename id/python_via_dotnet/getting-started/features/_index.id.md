---
title: Fitur
second_title: Aspose.Words untuk Python via .NET
articleTitle: Fitur yang Didukung
linktitle: Fitur yang Didukung
description: "Aspose.Words untuk Python via .NET memberi pengguna berbagai fitur mulai dari sekadar mengonversi dan memodifikasi dokumen hingga membuat dokumen terstruktur dan menarik secara visual atau mengotomatiskan pelaporan."
type: docs
weight: 30
url: /id/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words memberi pengguna berbagai fitur. Pengguna dapat melakukan banyak tugas terkait dokumen – mulai dari mengonversi dokumen dari satu format yang didukung ke format lain dan memodifikasi dokumen tersebut selama proses konversi menjadi tugas bisnis, seperti membuat dokumen terstruktur dan menarik secara visual atau mengotomatiskan pelaporan.

Format dan standar dokumen modern sangatlah kompleks, dan ketika Anda memerlukan konversi dokumen atau fitur pemrosesan dokumen lainnya dalam proyek Anda, satu-satunya solusi praktis adalah dengan mengandalkan komponen pihak ketiga yang mengimplementasikan fungsionalitas yang diinginkan. Namun menggunakan komponen pihak ketiga selalu membawa risiko. Salah satu risiko unik dalam pemrosesan dokumen adalah pertanyaan tentang seberapa lengkap dan benar perpustakaan mengimplementasikan format atau standar dokumen tertentu.

Aspose berkomitmen untuk memberikan implementasi format dan standar dokumen yang paling lengkap dan akurat. Tim Aspose.Words menunjukkan komitmen mereka terhadap interoperabilitas dengan memberikan catatan implementasi terperinci untuk format dokumen yang didukung di berbagai platform.

Tabel di bawah merangkum dan membandingkan ketersediaan fitur Aspose.Words untuk Python via .NET dan menyediakan link ke deskripsi fitur mendetail.

## Platform yang Didukung

Platform Aspose.Words untuk Python via .NET dapat digunakan pada Windows x64 atau x86, macOS x86_x64 atau arm64 dan berbagai distribusi Linux dengan Python 3.5 atau lebih baru diinstal. Terdapat persyaratan tambahan untuk platform Linux dan macOS target:
- Pustaka runtime GCC-6 (atau lebih baru)
- Ketergantungan .NET Core Runtime. Menginstal .NET Core Runtime sendiri memerlukan `NOT`
- Untuk Python 3.5-3.7: Diperlukan build `pymalloc` dari Python. Opsi pembuatan `--with-pymalloc` Python diaktifkan secara default. Biasanya, versi `pymalloc` dari Python ditandai dengan akhiran `m` di nama file.
- `libpython` berbagi perpustakaan Python. Opsi pembuatan `--enable-shared` Python dinonaktifkan secara default, beberapa distribusi Python tidak berisi pustaka bersama `libpython`. Untuk beberapa platform linux, shared library `libpython` dapat diinstal menggunakan manajer paket, misalnya: `sudo apt-get install libpython3.7`. Masalah umum adalah perpustakaan `libpython` diinstal di lokasi yang berbeda dari lokasi sistem standar untuk perpustakaan bersama. Masalah ini dapat diperbaiki dengan menggunakan opsi build Python untuk mengatur jalur pustaka alternatif saat mengompilasi Python, atau diperbaiki dengan membuat tautan simbolis ke file pustaka `libpython` di lokasi standar sistem untuk pustaka bersama. Biasanya, nama file perpustakaan bersama `libpython` adalah `libpythonX.Ym.so.1.0` untuk Python 3.5-3.7, atau libpythonX.Y.so.1.0 untuk Python 3.8 atau lebih baru (misalnya: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Jika Anda memerlukan dukungan untuk lebih banyak platform, carilah produk "saudara kembar" Aspose.Words untuk .NET atau Aspose.Words untuk Java.

## Format dan Konversi File

Banyak pelanggan di seluruh dunia mengandalkan fitur impor dan ekspor dokumen menyeluruh yang disediakan oleh Aspose.Words.

|  Fitur | Keterangan | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | Implementasi format DOC tercepat dan terlengkap yang dapat Anda temukan. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words menyediakan dukungan lengkap OOXML, Flat OPC dan juga Word 2003 XML. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Dukungan komprehensif format RTF untuk berinteraksi dengan berbagai aplikasi. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | Muat dan simpan HTML/XHTML untuk interoperabilitas yang lebih baik. Simpan sebagai MHTML juga tersedia. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words dapat memuat dan menyimpan dokumen dalam format Teks `OpenDocument` (.odt). | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Konversikan dokumen apa pun ke PDF dengan fidelitas tinggi. PDF/A didukung. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Konversikan dokumen apa pun ke XPS dengan fidelitas tinggi. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Ekstrak teks dengan mudah dengan menyimpannya dalam format teks biasa. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB adalah format populer untuk eBook. Anda dapat mengonversi dokumen apa pun dari Aspose.Words ke format IDPF EPUB. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words untuk .NET menyediakan dukungan untuk menyimpan dokumen ke format PCL. | {{< emoticons/tick >}} |

## Rendering dan Pencetakan

Aspose.Words sekarang menyediakan rendering halaman dokumen dengan ketelitian tinggi.

|  Fitur | Python via .NET |
|  :-  |  :-  |
| Tata letak dokumen ke dalam halaman dengan fidelitas tinggi (persis seperti yang dilakukan Microsoft Word®) ke semua format di bawah. | {{< emoticons/tick >}} |
| Render halaman individual atau dokumen lengkap ke PDF atau XPS. | {{< emoticons/tick >}} |
| Render halaman dokumen menjadi gambar BMP | {{< emoticons/tick >}} |
| Render halaman dokumen menjadi gambar (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Render bentuk individual dari dokumen menjadi gambar raster atau vektor. | {{< emoticons/tick >}} |
| Tentukan resolusi gambar, kualitas, kompresi, dan opsi lainnya. | {{< emoticons/tick >}} |
| Render halaman atau bentuk ke objek .NET Graphics dengan transformasi, ke ukuran tertentu. | {{< emoticons/tick >}} |
| Cetak halaman dokumen menggunakan infrastruktur pencetakan .NET. | {{< emoticons/cross >}} |
| Perbarui `TOC`, nomor halaman, dan bidang lainnya sebelum merender atau mencetak. | {{< emoticons/tick >}} |

## Fitur Isi Dokumen

Aspose.Words menyediakan model objek kaya yang terdiri dari lebih dari 100 kelas publik, yang memungkinkan Anda menghasilkan, menggabungkan, memodifikasi, menguraikan, atau memeriksa dokumen yang dimuat secara terprogram.

|  Fitur | Python via .NET |
|  :-  |  :-  |
| Akses, buat, dan modifikasi paragraf dan teks. | {{< emoticons/tick >}} |
| Akses, buat, dan modifikasi gambar, kotak teks, dan bentuk. | {{< emoticons/tick >}} |
| Akses, buat, dan ubah tabel, baris, dan sel. | {{< emoticons/tick >}} |
| Akses, buat dan ubah bidang, bidang formulir, hyperlink, dan bookmark. | {{< emoticons/tick >}} |
| Akses, buat, dan ubah bagian dokumen, header, dan footer. | {{< emoticons/tick >}} |
| Akses, buat, dan ubah catatan kaki, catatan akhir, dan komentar. | {{< emoticons/tick >}} |
| Akses, buat, dan modifikasi XML Kustom, SmartTags, dan Tag Dokumen Terstruktur (Kontrol Konten). | {{< emoticons/tick >}} |
| Akses dan modifikasi semua elemen dokumen menggunakan kelas dan metode mirip **XmlDocument**. | {{< emoticons/tick >}} |
| Perbarui hasil bidang `IF`, rumus, dan jenis bidang populer lainnya. | {{< emoticons/tick >}} |
| Bangun kembali dan perbarui bidang Daftar Isi (TOC) persis seperti yang dilakukan Microsoft Word. | {{< emoticons/tick >}} |
| Salin dan pindahkan elemen dokumen antar dokumen. | {{< emoticons/tick >}} |
| Gabungkan dan pisahkan dokumen. | {{< emoticons/tick >}} |
| Dapatkan dan atur properti dokumen bawaan dan kustom. | {{< emoticons/tick >}} |
| Tentukan perlindungan dokumen, buka dokumen yang dilindungi dan dienkripsi. | {{< emoticons/tick >}} |
| Temukan dan ganti teks, perhitungkan konten dokumen. | {{< emoticons/tick >}} |
| Menerima semua revisi dalam dokumen. | {{< emoticons/tick >}} |
| Pertahankan atau ekstrak objek OLE dan kontrol ActiveX dari dokumen. | {{< emoticons/tick >}} |
| Pertahankan atau hapus makro VBA dari dokumen. Pertahankan tanda tangan digital makro VBA. | {{< emoticons/tick >}} |
| Deteksi dan verifikasi tanda tangan digital dalam dokumen. | {{< emoticons/tick >}} |
| Sisipkan teks HTML. | {{< emoticons/tick >}} |
| Ekstrak Makro VBA dari Dokumen Word. | {{< emoticons/tick >}} |

## Fitur Pemformatan Dokumen

Aspose.Words menyediakan akses terprogram terperinci ke properti pemformatan semua elemen dokumen.

|  Fitur | Python via .NET |
|  :-  |  :-  |
| Akses dan modifikasi semua pemformatan karakter termasuk font, warna, efek, batas, dan bayangan. | {{< emoticons/tick >}} |
| Akses dan ubah semua pemformatan paragraf termasuk indentasi, spasi, batas dan bayangan, perhentian tab. | {{< emoticons/tick >}} |
| Akses dan ubah semua format daftar berpoin dan bernomor termasuk penomoran dan level. | {{< emoticons/tick >}} |
| Akses dan ubah format tabel termasuk perataan, orientasi, batas, dan bayangan. | {{< emoticons/tick >}} |
| Akses dan ubah semua properti bagian termasuk ukuran kertas, margin, dan orientasi. | {{< emoticons/tick >}} |
| Akses, buat, dan ubah gaya dokumen. | {{< emoticons/tick >}} |
| Akses dan modifikasi objek gambar termasuk posisi, ukuran, properti garis dan isian, byte gambar. | {{< emoticons/tick >}} |

## Fitur Mail Merge

Anda dapat menggunakan Aspose.Words sebagai solusi pelaporannya sendiri. Rancang laporan Anda di Microsoft Word lalu minta Aspose.Words mengisi dokumen dengan data dari berbagai sumber data.

|  Fitur | Python via .NET |
|  :-  |  :-  |
| Gunakan semua bidang Microsoft Word Mail Merge standar dalam laporan Anda termasuk `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, GREETINGLINE. | {{< emoticons/tick >}} |
| Jalankan Mail Merge untuk dokumen yang berisi bidang dan rumus `IF` yang paling rumit dan bertumpuk sekalipun. | {{< emoticons/tick >}} |
| Isi dan kembangkan tabel atau fragmen secara dinamis dalam dokumen dari sumber data Anda menggunakan wilayah mail merge. | {{< emoticons/cross >}} |
| Buat laporan dengan mudah yang berisi data detail master (induk-anak) seperti Order/OrderDetails. | {{< emoticons/cross >}} |
| Isi dokumen dengan data dari sumber data .NET apa pun seperti DataSet, DataTable, DataView, DataReader, atau ADO Recordset. | {{< emoticons/cross >}} |
| Isi dokumen dari sumber data apa pun seperti kueri LINQ, file XML, atau objek bisnis dengan mengimplementasikan antarmuka [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/). | {{< emoticons/cross >}} |
| Ambil kendali yang tepat, seperti pemformatan angka, atas cara data Anda digabungkan menggunakan peristiwa. | {{< emoticons/cross >}} |
| Sisipkan gambar selama mail merge. | {{< emoticons/tick >}} |
| Membuat atau memodifikasi sumber data Microsoft Word Mail Merge untuk dokumen secara terprogram. Pertahankan pengaturan Mail Merge dan sumber data. | {{< emoticons/tick >}} |
| Ambil nama bidang mail merge. | {{< emoticons/tick >}} |

## Fitur Pelaporan

LINQ Reporting Engine adalah alat pelaporan canggih yang memungkinkan Anda menghasilkan dokumen berdasarkan dokumen templat dan data yang diperoleh dari berbagai sumber termasuk database, XML, JSON, OData, objek tipe CLR khusus, dokumen eksternal, dan banyak lagi.

| Fitur Utama | Python via .NET |
|  :-  |  :-  |
| Dukungan sintaks C# dan metode ekstensi LINQ langsung di templat (bahkan untuk sumber data `ADO.NET`) | {{< emoticons/tick >}} |
| Dukungan blok dokumen yang dapat diulang dan bersyarat (loop dan kondisi) untuk tabel, daftar, dan konten umum | {{< emoticons/tick >}} |
| Dukungan grafik dan gambar yang dihasilkan secara dinamis | {{< emoticons/tick >}} |
| Dukungan penyisipan dokumen luar dan blok HTML ke dalam dokumen | {{< emoticons/tick >}} |
| Dukungan berbagai sumber data (termasuk berbagai jenis) untuk pembuatan satu dokumen | {{< emoticons/tick >}} |
| Dukungan bawaan untuk hubungan data (detail master) | {{< emoticons/tick >}} |
| Dukungan komprehensif terhadap berbagai manipulasi data seperti pengelompokan, pengurutan, pemfilteran, dan lain-lain langsung di template | {{< emoticons/tick >}} |
| WYSIWYG: Dokumen yang dihasilkan mempertahankan format elemen yang sama seperti yang dimiliki templat terkait | {{< emoticons/tick >}} |
