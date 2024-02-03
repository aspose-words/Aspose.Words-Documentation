---
title: Bekerja dengan Bidang Formulir di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Bidang Formulir
linktitle: Bekerja dengan Bidang Formulir
description: "Sisipkan, dapatkan, atau format bidang formulir dalam dokumen menggunakan Python."
type: docs
weight: 380
url: /id/python-net/working-with-form-fields/
---

Dokumen yang berisi isian (kolom) disebut formulir. Misalnya, Anda bisa membuat formulir pendaftaran di Microsoft Word yang menggunakan daftar drop-down di mana pengguna dapat memilih entri. Bidang `Form` adalah lokasi penyimpanan tipe data tertentu, seperti nama atau alamat. Bidang formulir di Microsoft Word mencakup input teks, kotak kombo, dan kotak centang.

Anda dapat menggunakan kolom formulir di proyek Anda untuk "berkomunikasi" dengan pengguna Anda. Misalnya, Anda membuat dokumen yang kontennya dilindungi, namun hanya bidang formulir yang dapat diedit. Pengguna dapat memasukkan data di kolom formulir dan mengirimkan dokumen. Aplikasi Anda yang menggunakan Aspose.Words dapat mengambil data dari kolom formulir dan memprosesnya.

Menempatkan kolom formulir ke dalam dokumen melalui kode itu mudah. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) memiliki metode khusus untuk menyisipkannya, satu metode untuk setiap jenis kolom formulir. Masing-masing metode menerima parameter string yang mewakili nama bidang formulir. Nama bisa berupa string kosong. Namun jika Anda menentukan nama untuk bidang formulir, maka penanda secara otomatis dibuat dengan nama yang sama.

## Memasukkan Bidang Formulir

Bidang formulir adalah kasus khusus bidang Word yang memungkinkan "interaksi" dengan pengguna. Bidang formulir di Microsoft Word meliputi kotak teks, kotak kombo, dan kotak centang.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) menyediakan metode khusus untuk memasukkan setiap jenis kolom formulir ke dalam dokumen: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), dan [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Perhatikan bahwa jika Anda menentukan nama untuk bidang formulir, maka penanda secara otomatis dibuat dengan nama yang sama.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir kotak kombo ke dalam dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Masukkan Input Teks

Gunakan metode [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) untuk menyisipkan kotak teks ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir masukan teks ke dalam dokumen:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Masukkan Kotak Centang

Hubungi [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) untuk memasukkan kotak centang ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir kotak centang ke dalam dokumen:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Masukkan Kotak Kombo

Hubungi [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) untuk memasukkan Combobox ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan kolom formulir Combobox ke dalam dokumen:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Dapatkan Bidang Formulir

Kumpulan bidang formulir diwakili oleh kelas [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) yang dapat diambil menggunakan properti [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Ini berarti Anda bisa mendapatkan kolom formulir yang terdapat dalam node dokumen apa pun termasuk dokumen itu sendiri.

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh berikut dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Anda bisa mendapatkan bidang formulir tertentu berdasarkan indeks atau namanya.

Contoh kode berikut menunjukkan cara mengakses bidang formulir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Properti [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) memungkinkan Anda bekerja dengan nama, jenis, dan hasil bidang formulir.

Contoh kode berikut menunjukkan cara bekerja dengan nama, jenis, dan hasil bidang formulir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Format Bidang Formulir

Properti [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) dari [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) memungkinkan penerapan pemformatan font ke [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) secara keseluruhan termasuk nilai bidang.

Contoh kode berikut menunjukkan cara menerapkan pemformatan font ke **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
