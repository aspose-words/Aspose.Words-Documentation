---
title: Mail Merge Templat dalam Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Mail Merge Templat
linktitle: Mail Merge Templat
type: docs
description: "Buat templat Mail Merge untuk menentukan konten tetap dalam dokumen keluaran, lalu buat dokumen gabungan menggunakan bidang gabungan di Python."
keywords: "create Mail Merge template python"
weight: 10
url: /id/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Adalah umum untuk menggunakan templat gabungan sebagai dokumen dasar untuk operasi Mail Merge baik jika itu adalah Mail Merge sederhana atau Mail Merge dengan wilayah. Mail merge dengan wilayah lebih kuat dan populer daripada mail merge sederhana. Mail Merge sederhana dianggap sebagai kasus khusus Mail Merge dengan wilayah di mana wilayah tersebut merupakan keseluruhan dokumen. Semua dijelaskan dalam artikel berikutnya "Jenis Operasi Mail Merge" secara lebih rinci.

Templat memastikan bahwa teks dalam dokumen gabungan keluaran diformat dengan benar, dan operasi Mail Merge menjamin bahwa teks dari sumber data dimasukkan dengan benar ke dalam templat gabungan.

Aspose.Words menyediakan kemampuan untuk membuat templat Mail Merge untuk menentukan konten tetap dan kemudian membuat dokumen gabungan menggunakan bidang gabungan. Dengan demikian, templat penggabungan akan memiliki teks yang diperlukan, yang sama di semua dokumen keluaran, dan bidang penggabungan untuk mengisi konten yang berubah. Hasilnya, informasi dari sumber data yang ditentukan akan ditambahkan ke templat gabungan melalui bidang-bidang ini selama pembuatan dokumen gabungan.

## Apa itu Templat Mail Merge

Templat Mail Merge adalah dokumen hasil personalisasi yang berisi data tetap dan bidang gabungan yang Anda inginkan untuk teks variabelnya. Templat gabungan dapat dalam format apa pun yang mendukung bidang, misalnya, DOC, DOCX, DOT, DOTX, RTF. Selain itu, Anda juga dapat menggunakan template mustache yang dijelaskan pada artikel "Sintaks TemplateMustache" secara lebih detail.

Anda dapat membuat templat gabungan untuk menjadi model dokumen baru, dan templat tersebut harus menyertakan teks utama yang harus sama untuk setiap versi dokumen yang digabungkan. Menambahkan bidang gabungan di dalam templat akan mewakili data personalisasi seperti nama atau alamat yang diambil dari sumber data. Operasi Mail Merge akan secara otomatis menyisipkan data personalisasi dari sumber data Anda ke dokumen templat gabungan Anda.

Selain itu, Anda dapat menambahkan wilayah Mail Merge di templat Anda dengan menyisipkan dua bidang Mail Merge untuk menandai awal dan akhir wilayah mail. Artikel selanjutnya "Jenis Operasi Mail Merge" menjelaskannya secara lebih rinci.

## Buat Templat Mail Merge

Anda dapat membuat templat dan menambahkan bidang gabungan tertentu ke dalamnya, yang akan diganti dengan nilai dari sumber data baik secara manual, misalnya, menggunakan Microsoft Word, atau secara terprogram menggunakan Aspose.Words. Pada artikel ini, kita akan melihat cara terprogram untuk membuat template.

Gunakan kelas [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) untuk membuat templat gabungan yang diperlukan menggunakan Aspose.Words. Anda dapat menyertakan teks, bidang gabungan, dan jeda baris dalam templat tersebut menggunakan metode [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), dan [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Contoh kode berikut menunjukkan cara membuat templat Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

Gambar di bawah ini menunjukkan template yang dibuat:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Menyesuaikan Properti Templat Mail Merge

Aspose.Words memungkinkan Anda menyesuaikan templat melalui banyak properti. Kustomisasi template akan dijelaskan di bawah ini melalui contoh penyesuaian beberapa properti gambar dan teks.

## Lihat Juga

* Untuk detail lebih lanjut tentang cara membuat templat di Microsoft Word secara manual, silakan periksa [Buat Templat](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel dalam Dokumentasi Microsoft
