---
title: Pisahkan Tabel dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Tabel Terpisah
linktitle: Tabel Terpisah
description: "Pisahkan tabel dalam C++. Cara membagi satu tabel menjadi dua tabel terpisah C++."
type: docs
weight: 100
url: /id/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

Sebuah tabel, yang direpresentasikan dalam Model Objek Dokumen Aspose.Words, terdiri dari baris dan sel independen, sehingga memudahkan untuk membagi tabel.

Untuk memanipulasi tabel untuk membaginya menjadi dua tabel, kita hanya perlu memindahkan beberapa baris dari tabel asli ke tabel baru. Untuk melakukan ini, kita perlu memilih baris yang ingin kita gunakan untuk membagi tabel.

Kita dapat membuat dua tabel dari tabel asli dengan mengikuti langkah-langkah sederhana ini:

1. Buat tiruan tabel tanpa mengkloning turunan untuk mempertahankan baris yang dipindahkan dan menyisipkannya setelah tabel asli
2. Mulai dari baris yang ditentukan, pindahkan semua baris berikutnya ke tabel kedua ini

Contoh kode berikut menunjukkan cara membagi tabel menjadi dua tabel pada baris tertentu:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
