---
title: Bekerja dengan Form Fields di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Form Fields
linktitle: Bekerja dengan Form Fields
description: "Memahami fitur Fields Form, bekerja dengan Form Fields menggunakan JavaSitemap"
type: docs
weight: 380
url: /id/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokumen yang berisi blanks isi (bidang) dikenal sebagai bentuk. Misalnya, Anda dapat membuat formulir pendaftaran dalam Microsoft Word yang menggunakan daftar drop-down dari pengguna mana yang dapat memilih entri. Login `Form` bidang adalah lokasi di mana jenis data tertentu, seperti nama atau alamat, disimpan. Bidang bentuk dalam Microsoft Word termasuk input teks, combobox dan kotak centang.

Anda dapat menggunakan bidang formulir dalam proyek Anda untuk "komunikasi" dengan pengguna Anda. Misalnya, Anda membuat dokumen yang kontennya dilindungi, tetapi hanya bidang bentuk yang dapat diedit. Pengguna dapat memasukkan data di bidang formulir dan menyerahkan dokumen. Aplikasi Anda yang menggunakan Aspose.Words dapat mengambil data dari bidang formulir dan memprosesnya.

Menempatkan bidang bentuk ke dalam dokumen melalui kode mudah. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) memiliki metode khusus untuk memasukkannya, satu untuk setiap jenis bidang bentuk. Setiap metode menerima parameter string mewakili nama bidang formulir. Nama dapat string kosong. Jika Anda menentukan nama untuk bidang formulir, maka bookmark secara otomatis dibuat dengan nama yang sama.

## Masukkan Form Fields

Bidang bentuk adalah kasus tertentu dari bidang Word yang memungkinkan "interaksi" dengan pengguna. Bidang bentuk dalam Microsoft Word termasuk kotak teks, kotak combo dan kotak centang.

**DocumentBuilder** menyediakan metode khusus untuk memasukkan setiap jenis bidang bentuk ke dalam dokumen: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) Sitemap [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int)Sitemap

Contoh kode berikut menunjukkan cara memasukkan kolom bentuk combobox ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Masukkan Masukan Teks

Gunakan **Login Login** metode untuk memasukkan kotak teks ke dalam dokumen.

Contoh kode berikut menunjukkan cara memasukkan kolom formulir input teks ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Masukkan kotak cek

Login **Login** untuk memasukkan kotak centang ke dalam dokumen.

Contoh kode berikut menunjukkan cara memasukkan kolom formulir kotak centang ke dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Masukkan kotak Combo

Login **LoginComboBox** untuk memasukkan combobox ke dalam dokumen.

Contoh kode berikut menunjukkan cara memasukkan kolom bentuk Combobox ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Mempertahankan Bidang Bentuk

Koleksi bidang bentuk diwakili oleh [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) kelas yang dapat diambil menggunakan [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) Login Ini berarti bahwa Anda dapat memperoleh bidang bentuk yang terkandung dalam node dokumen apa pun termasuk dokumen itu sendiri.

Contoh kode berikut menunjukkan cara mendapatkan koleksi bidang bentuk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file sampel dari contoh berikut dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx)Sitemap

{{% /alert %}}

Anda bisa mendapatkan bidang bentuk tertentu dengan indeks atau nama.

Contoh kode berikut menunjukkan cara mengakses bidang bentuk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Login **FormField** properti memungkinkan Anda untuk bekerja dengan nama bidang bentuk, jenis, dan hasilnya.

Contoh kode berikut menunjukkan cara bekerja dengan nama bidang bentuk, jenis, dan hasil:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
