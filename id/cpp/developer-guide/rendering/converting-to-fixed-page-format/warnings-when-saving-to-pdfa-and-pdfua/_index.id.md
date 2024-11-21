---
title: Peringatan Saat Menyimpan ke PDF/A dan PDF/UA
second_title: Aspose.Words untuk C++
articleTitle: Peringatan Masalah Aksesibilitas Saat Menyimpan ke PDF/A dan PDF/UA
linktitle: Peringatan Masalah Aksesibilitas Saat Menyimpan ke PDF/A dan PDF/UA
description: "PDF/A dan PDF/UA memberlakukan persyaratan aksesibilitas yang terkait dengan konten dokumen. Saat menyimpan ke PDF/A atau PDF/UA di C++ dan masalah tersebut melanggar kepatuhan, peringatan akan dikeluarkan."
type: docs
weight: 39
url: /id/cpp/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Format PDF/A dan PDF/UA memberlakukan sejumlah persyaratan aksesibilitas terkait konten dokumen yang tidak dapat dipenuhi selama konversi otomatis dari Word ke PDF. Persyaratan ini dijelaskan dalam artikel sebelumnya *"Working with PDF/A or PDF/UA"*. Sekarang peringatan dikeluarkan untuk beberapa masalah ini.

Peringatan dikeluarkan saat menyimpan ke salah satu format PDF/A atau PDF/UA dan masalah tersebut melanggar kepatuhan. Misalnya, peringatan tentang judul dokumen yang hilang akan dikeluarkan saat menyimpan ke PDF/UA dan tidak akan dikeluarkan saat menyimpan ke PDF/A.

Semua peringatan terdiri dari **WarningType.MinorFormattingLoss** dan **WarningSource.Pdf**. Berikut adalah daftar nilai peringatan Deskripsi baru:

| Deskripsi nilai peringatan | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Judul dokumen tidak ada. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." |  | {{< emoticons/tick >}} |
| "Dokumen tersebut berisi judul-judul yang levelnya tidak berurutan. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." |  | {{< emoticons/tick >}} |
| "Ada bentuk tanpa teks alternatif dalam dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Ada tabel tanpa teks alternatif di dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Ada hyperlink tanpa teks alternatif dalam dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." |  | {{< emoticons/tick >}} |
| "Ada tabel tanpa baris/kolom header di dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." |  | {{< emoticons/tick >}} |
| "Dokumen tersebut berisi karakter Unicode PUA. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." | {{< emoticons/tick >}} |  |
| "Dokumen tersebut berisi .mesin terbang notdef. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya sesuai." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
