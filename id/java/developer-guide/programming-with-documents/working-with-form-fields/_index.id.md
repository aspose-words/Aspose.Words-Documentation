---
title: Bekerja dengan Bidang Formulir di Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Bidang Formulir
linktitle: Bekerja dengan Bidang Formulir
description: "Memahami fitur Bidang Formulir, bekerja dengan Bidang Formulir menggunakan Java."
type: docs
weight: 380
url: /id/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokumen yang berisi isian kosong (kolom) dikenal sebagai formulir. Misalnya, Anda dapat membuat formulir pendaftaran di Microsoft Word yang menggunakan daftar tarik-turun tempat pengguna dapat memilih entri. Bidang `Form` adalah lokasi penyimpanan jenis data tertentu, seperti nama atau alamat. Kolom formulir di Microsoft Word menyertakan input teks, combobox, dan checkbox.

Anda dapat menggunakan bidang formulir di proyek Anda untuk "berkomunikasi" dengan pengguna Anda. Misalnya, Anda membuat dokumen yang kontennya dilindungi, tetapi hanya bidang formulir yang dapat diedit. Pengguna dapat memasukkan data di kolom formulir dan mengirimkan dokumen. Aplikasi Anda yang menggunakan Aspose.Words dapat mengambil data dari kolom formulir dan memprosesnya.

Menempatkan bidang formulir ke dalam dokumen melalui kode itu mudah. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) memiliki metode khusus untuk memasukkannya, satu untuk setiap jenis bidang formulir. Masing-masing metode menerima parameter string yang mewakili nama bidang formulir. Nama bisa berupa string kosong. Namun, jika Anda menentukan nama untuk bidang formulir, maka bookmark akan dibuat secara otomatis dengan nama yang sama.

## Sisipkan Kolom Formulir

Bidang formulir adalah kasus khusus dari bidang Word yang memungkinkan "interaksi" dengan pengguna. Kolom formulir di Microsoft Word termasuk kotak teks, kotak kombo, dan checkbox.

**DocumentBuilder**

Contoh kode berikut menunjukkan cara menyisipkan bidang formulir combobox ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Sisipkan Masukan Teks

Gunakan metode **insertTextInput** untuk menyisipkan kotak teks ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan bidang formulir input teks ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Sisipkan Kotak Centang

Panggil **insertCheckBox** untuk menyisipkan checkbox ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan bidang formulir checkbox ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Sisipkan Kotak Kombo

Panggil **insertComboBox** untuk menyisipkan combobox ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan bidang formulir Combobox ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Dapatkan Bidang Formulir

Kumpulan bidang formulir diwakili oleh kelas [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) yang dapat diambil menggunakan properti [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Ini berarti Anda dapat memperoleh bidang formulir yang terdapat di simpul dokumen apa pun termasuk dokumen itu sendiri.

Contoh kode berikut menunjukkan cara mendapatkan kumpulan bidang formulir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh berikut dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Anda bisa mendapatkan bidang formulir tertentu dengan indeks atau namanya.

Contoh kode berikut menunjukkan cara mengakses bidang formulir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Properti **FormField** memungkinkan Anda bekerja dengan nama, jenis, dan hasil bidang formulir.

Contoh kode berikut menunjukkan cara bekerja dengan nama bidang formulir, jenis, dan hasil:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
