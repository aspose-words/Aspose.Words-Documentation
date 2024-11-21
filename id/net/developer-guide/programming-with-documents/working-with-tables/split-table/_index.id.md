---
title: Pisahkan Tabel di C#
second_title: Aspose.Words untuk .NET
articleTitle: Tabel Terpisah
linktitle: Tabel Terpisah
description: "Pisahkan tabel di C#. Cara membagi satu tabel menjadi dua tabel terpisah C#."
type: docs
weight: 100
url: /id/net/split-table/
timestamp: 2024-01-27-14-07-04
---

Sebuah tabel, yang direpresentasikan dalam Aspose.Words Document Object Model, terdiri dari baris dan sel independen, sehingga memudahkan untuk memisahkan tabel.

Untuk memanipulasi suatu tabel agar terbagi menjadi dua tabel, kita hanya perlu memindahkan beberapa baris dari tabel asli ke tabel baru. Untuk melakukan ini, kita perlu memilih baris yang ingin kita bagi tabelnya.

Kita dapat membuat dua tabel dari tabel asli dengan mengikuti langkah-langkah sederhana berikut:

1. Buat tiruan tabel tanpa mengkloning turunan untuk mempertahankan baris yang dipindahkan dan menyisipkannya setelah tabel asli
2. Mulai dari baris yang ditentukan, pindahkan semua baris berikutnya ke tabel kedua ini

Contoh kode berikut menunjukkan cara membagi tabel menjadi dua tabel pada baris tertentu:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
