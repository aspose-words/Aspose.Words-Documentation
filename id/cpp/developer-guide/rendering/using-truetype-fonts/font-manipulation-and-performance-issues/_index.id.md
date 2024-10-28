---
title: Manipulasi Font dan Masalah Kinerja di C++
second_title: Aspose.Words untuk C++
articleTitle: Manipulasi Font dan Masalah Kinerja
linktitle: Manipulasi Font dan Masalah Kinerja
description: "Aspose.Words untuk C++ menggunakan nama lengkap font, nama keluarga, versi, gaya untuk menemukan data font yang diperlukan atau pengganti yang sesuai untuk font yang diminta. FontSettings memungkinkan Anda mempercepat pemuatan dokumen."
type: docs
weight: 11
url: /id/cpp/font-manipulation-and-performance-issues/
---

Semua mekanisme manipulasi font yang tersedia terdapat dalam kelas [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Kelas ini bertanggung jawab untuk mengambil font dalam sumber font yang ditentukan serta untuk proses Penggantian Font, seperti yang dijelaskan di bawah ini.

## Menguraikan Font yang Diselesaikan

Font diuraikan dalam beberapa langkah:

1. Mendapatkan info untuk font, menyelesaikan dari semua font yang tersedia.
1. Mengurai font yang diselesaikan untuk mendapatkan mesin terbang dan metrik yang tersedia (horizontal dan vertikal).
1. Mengurai font yang diselesaikan untuk disematkan dan disubset.

Saat Aspose.Words menemukan font dalam dokumen untuk pertama kalinya, ia mencoba mendapatkan informasi font dasar, seperti nama lengkap font, nama keluarga, versi, gaya, dari file font yang terletak di setiap sumber font. Setelah semua font diambil, Aspose.Words menggunakan detail ini untuk menemukan data font yang diperlukan atau pengganti yang sesuai untuk font yang diminta.

## Masalah Kinerja saat mengganti font

Karena prosedur yang dijelaskan di atas memakan waktu, prosedur ini dapat berdampak negatif pada kinerja aplikasi pada peluncuran pertamanya. Namun, setiap instance **FontSettings** memiliki cache sendiri, yang dapat mengurangi waktu pemrosesan dokumen berikutnya. Misalnya, Anda dapat membagikan instance kelas **FontSettings** di antara dokumen yang berbeda, yang memungkinkan Anda mempercepat pemuatan dokumen. Contoh berikut menunjukkan hal ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

Dalam kasus ketika **FontSettings** tidak didefinisikan secara eksplisit, Aspose.Words menggunakan instance **FontSettings** default. Instance ini juga dibagikan secara otomatis di antara dokumen, dan dapat diekstraksi sebagai berikut:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Menggunakan Instance FontSettings Default

Jika Anda yakin bahwa semua dokumen pemrosesan memerlukan pengaturan font yang sama, maka disarankan untuk menyiapkan dan menggunakan instance **FontSettings** default. Misalkan Anda perlu menggunakan sumber font yang sama untuk semua dokumen Anda. Dalam hal ini, Anda cukup mengubah instance default sebagai berikut:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Kustom **FontSettings** memiliki prioritas lebih tinggi daripada instance default.

{{% /alert %}}