---
title: Bagaimana Mengenali Bahwa Font Telah Diganti di C++
second_title: Aspose.Words untuk C++
articleTitle: Bagaimana Mengenali Bahwa Font Telah Diganti
linktitle: Bagaimana Mengenali Bahwa Font Telah Diganti
description: "Jika Anda tidak yakin mengapa tata letak dokumen berubah atau mengapa font tertentu tidak terlihat seperti yang diharapkan, pesan peringatan penggantian font dapat membantu."
type: docs
weight: 13
url: /id/cpp/how-to-recognize-that-the-font-was-replaced/
---

Terkadang, mungkin tidak jelas mengapa tata letak dokumen berubah, atau mengapa beberapa font tidak terlihat seperti yang diharapkan. Dalam kasus seperti itu, pesan peringatan penggantian font yang diterapkan oleh antarmuka IWarningCallback datang untuk menyelamatkan. Mereka memiliki tipe peringatan [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) dan format teks deskripsi standar, " Font '<OriginalFont> ' belum ditemukan. Menggunakan font '<SubstitutionFont> ' sebagai gantinya. Reason: <Reason>", dengan alasan sebagai berikut:

- "nama alternatif dari dokumen" – untuk penggantian dengan [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "substitusi fontconfig" – untuk substitusi dengan aturan konfigurasi font
- "substitusi tabel" – untuk substitusi dengan aturan tabel
- "substitusi info font" – untuk substitusi berdasarkan aturan info font
- "substitusi font default" – untuk substitusi dengan aturan font default
- "font pertama yang tersedia" – untuk penggantian dengan font pertama yang tersedia
