---
title: Bekerja dengan Bidang Formulir di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Bidang Formulir
linktitle: Bekerja dengan Bidang Formulir
description: "Memahami fitur Bidang Formulir, bekerja dengan Bidang Formulir menggunakan C#."
type: docs
weight: 380
url: /id/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokumen yang berisi isian (kolom) disebut formulir. Misalnya, Anda bisa membuat formulir pendaftaran di Microsoft Word yang menggunakan daftar drop-down di mana pengguna dapat memilih entri. Bidang `Form` adalah lokasi penyimpanan tipe data tertentu, seperti nama atau alamat. Bidang formulir di Microsoft Word mencakup input teks, kotak kombo, dan kotak centang.

Anda dapat menggunakan kolom formulir di proyek Anda untuk "berkomunikasi" dengan pengguna Anda. Misalnya, Anda membuat dokumen yang kontennya dilindungi, namun hanya bidang formulir yang dapat diedit. Pengguna dapat memasukkan data di kolom formulir dan mengirimkan dokumen. Aplikasi Anda yang menggunakan Aspose.Words dapat mengambil data dari kolom formulir dan memprosesnya.

Menempatkan kolom formulir ke dalam dokumen melalui kode itu mudah. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) memiliki metode khusus untuk menyisipkannya, satu metode untuk setiap jenis kolom formulir. Masing-masing metode menerima parameter string yang mewakili nama bidang formulir. Nama bisa berupa string kosong. Namun jika Anda menentukan nama untuk bidang formulir, maka penanda secara otomatis dibuat dengan nama yang sama.

## Sisipkan Bidang Formulir

Bidang formulir adalah kasus khusus bidang Word yang memungkinkan "interaksi" dengan pengguna. Bidang formulir di Microsoft Word meliputi kotak teks, kotak kombo, dan kotak centang.

**DocumentBuilder** menyediakan metode khusus untuk memasukkan setiap jenis kolom formulir ke dalam dokumen: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), dan [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Perhatikan bahwa jika Anda menentukan nama untuk bidang formulir, maka penanda secara otomatis dibuat dengan nama yang sama.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir kotak kombo ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Masukkan Input Teks

Gunakan metode **InsertTextInput** untuk menyisipkan kotak teks ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir masukan teks ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Masukkan Kotak Centang

Hubungi **InsertCheckBox** untuk memasukkan kotak centang ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir kotak centang ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Masukkan Kotak Kombo

Hubungi **InsertComboBox** untuk memasukkan kotak kombo ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir Combobox ke dalam dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Dapatkan Bidang Formulir

Kumpulan bidang formulir diwakili oleh kelas [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) yang dapat diambil menggunakan properti [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/). Ini berarti Anda bisa mendapatkan kolom formulir yang terdapat dalam node dokumen apa pun termasuk dokumen itu sendiri.

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh berikut dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Contoh kode berikut menunjukkan cara mendapatkan kumpulan bidang formulir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Anda bisa mendapatkan bidang formulir tertentu berdasarkan indeks atau namanya.

Contoh kode berikut menunjukkan cara mengakses bidang formulir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Properti **FormField** memungkinkan Anda bekerja dengan nama, jenis, dan hasil bidang formulir.

Contoh kode berikut menunjukkan cara bekerja dengan nama, jenis, dan hasil bidang formulir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Format Bidang Formulir

Properti [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) dari [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) memungkinkan penerapan pemformatan font ke **FormField** secara keseluruhan termasuk nilai bidang.

Contoh kode berikut menunjukkan cara menerapkan pemformatan font ke **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
