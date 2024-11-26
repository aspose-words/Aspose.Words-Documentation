---
title: Peringatan Saat Menyimpan ke PDF/A dan PDF/UA
second_title: Aspose.Words untuk .NET
articleTitle: Peringatan Masalah Aksesibilitas Saat Menyimpan ke PDF/A dan PDF/UA
linktitle: Peringatan Masalah Aksesibilitas Saat Menyimpan ke PDF/A dan PDF/UA
description: "PDF/A dan PDF/UA memberlakukan persyaratan aksesibilitas terkait konten dokumen. Saat menyimpan ke PDF/A atau PDF/UA di C# dan masalah tersebut melanggar kepatuhan, peringatan akan dikeluarkan."
type: docs
weight: 29
url: /id/net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Format PDF/A dan PDF/UA memberlakukan sejumlah persyaratan aksesibilitas terkait konten dokumen yang tidak dapat dipenuhi selama konversi otomatis dari Word ke PDF. Persyaratan ini dijelaskan di artikel sebelumnya *"Bekerja dengan PDF/A atau PDF/UA"*. Kini peringatan dikeluarkan untuk beberapa masalah ini.

Peringatan dikeluarkan saat menyimpan ke salah satu format PDF/A atau PDF/UA dan masalah tersebut melanggar kepatuhan. Misalnya, peringatan tentang judul dokumen yang hilang akan dikeluarkan saat menyimpan ke PDF/UA dan tidak akan dikeluarkan saat menyimpan ke PDF/A.

Semua peringatan berasal dari [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.MinorFormattingLoss** dan [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**.pdf**. Berikut adalah daftar nilai peringatan Deskripsi yang baru:

|  Nilai peringatan deskripsi |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Judul dokumen tidak ada. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |                          |   {{< emoticons/tick >}}  |
|  "Dokumen tersebut berisi judul yang levelnya tidak berurutan. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |                          |   {{< emoticons/tick >}}  |
|  "Ada bentuk tanpa teks alternatif di dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Ada tabel tanpa teks alternatif di dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Ada hyperlink tanpa teks alternatif di dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |                          |   {{< emoticons/tick >}}  |
|  "Ada tabel tanpa baris/kolom header dalam dokumen. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |                          |   {{< emoticons/tick >}}  |
|  "Dokumen tersebut berisi karakter Unicode PUA. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |   {{< emoticons/tick >}}  |                          |
|  "Dokumen tersebut berisi .notdef glyph. Ini melanggar persyaratan kepatuhan. Dokumen keluaran tidak akan sepenuhnya mematuhi." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
