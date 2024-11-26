---
title: Bekerja dengan Bidang Formulir di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Bidang Formulir
linktitle: Bekerja dengan Bidang Formulir
description: "Memahami fitur Bidang Formulir, bekerja dengan Bidang Formulir menggunakan C++."
type: docs
weight: 380
url: /id/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokumen yang berisi isian kosong (kolom) dikenal sebagai formulir. Misalnya, Anda dapat membuat formulir pendaftaran di Microsoft Word yang menggunakan daftar tarik-turun tempat pengguna dapat memilih entri. Bidang formulir adalah lokasi penyimpanan jenis data tertentu, seperti nama atau alamat. Kolom formulir di Microsoft Word menyertakan input teks, Kotak kombo, dan kotak centang.

Anda dapat menggunakan bidang formulir di proyek Anda untuk "berkomunikasi" dengan pengguna Anda. Misalnya, Anda membuat dokumen yang kontennya dilindungi, tetapi hanya bidang formulir yang dapat diedit. Pengguna dapat memasukkan data di kolom formulir dan mengirimkan dokumen. Aplikasi Anda yang menggunakan Aspose.Words dapat mengambil data dari kolom formulir dan memprosesnya.

Menempatkan bidang formulir ke dalam dokumen melalui kode itu mudah. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) memiliki metode khusus untuk memasukkannya, satu untuk setiap jenis bidang formulir. Masing-masing metode menerima parameter string yang mewakili nama bidang formulir. Nama bisa berupa string kosong. Namun, jika Anda menentukan nama untuk bidang formulir, maka bookmark akan dibuat secara otomatis dengan nama yang sama.

## Menyisipkan Bidang Formulir

Bidang formulir adalah kasus khusus bidang Kata yang memungkinkan "interaksi" dengan pengguna. Kolom formulir di Microsoft Word menyertakan kotak teks, kotak kombo, dan kotak centang.

**DocumentBuilder**

Contoh kode berikut menunjukkan cara menyisipkan bidang formulir kotak kombo ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Mendapatkan Bidang Formulir

Kumpulan bidang formulir diwakili oleh kelas [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) yang dapat diambil menggunakan properti [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Ini berarti Anda dapat memperoleh bidang formulir yang terdapat di simpul dokumen apa pun termasuk dokumen itu sendiri.

Contoh kode berikut menunjukkan cara mendapatkan kumpulan bidang formulir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Anda bisa mendapatkan bidang formulir tertentu dengan indeks atau namanya.

Contoh kode berikut menunjukkan cara mengakses bidang formulir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Properti **FormField** memungkinkan Anda bekerja dengan nama, jenis, dan hasil bidang formulir.

Contoh kode berikut menunjukkan cara bekerja dengan nama bidang formulir, jenis, dan hasil:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
