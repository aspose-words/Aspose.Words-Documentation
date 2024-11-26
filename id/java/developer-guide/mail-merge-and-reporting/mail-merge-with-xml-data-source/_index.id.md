---
title: Mail Merge dengan XML Sumber Data dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Mail Merge dengan XML Sumber Data
linktitle: Mail Merge dengan XML Sumber Data
type: docs
description: "Gunakan berbagai sumber data saat melakukan operasi Mail Merge, termasuk file XML. Keuntungan utama menggunakan XML adalah kemampuan untuk mendefinisikan hierarki secara langsung dalam dokumen di Java."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /id/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

Anda dapat menggunakan berbagai sumber data saat melakukan operasi Mail Merge, termasuk file XML. Keuntungan utama menggunakan XML adalah kemampuan untuk mendefinisikan hierarki tepat di dokumen dan kemudian meneruskannya ke Aspose.Words.

Artikel ini akan menjelaskan cara membaca data dari file XML daripada langsung dari database dan menyertakan XML sebagai sumber data untuk melakukan operasi Mail Merge.

## Keuntungan XML Sebagai Sumber Data

XML sumber data sangat berguna untuk menyimpan data tanpa overhead database. Mereka bagus untuk aplikasi offline di mana pengguna perlu menambah, mengedit, dan menghapus data saat mereka tidak dapat terhubung ke database.

XML data dapat menjadi alternatif sumber data yang baik untuk basis data relasional, terutama jika Anda bekerja dengan aplikasi web. Sebagian besar layanan web menggunakan XML untuk bertukar informasi. Basis data berorientasi XML secara aktif digunakan di pasar saat ini, dan pengembang basis data relasional menambahkan kompatibilitas XML ke produk mereka untuk mendapatkan pengembalian basis data XML.

Karena XML menyimpan data dalam format teks biasa, penyimpanannya tidak bergantung pada platform. Dengan demikian, data dapat dengan mudah diekspor, diimpor, atau dipindahkan begitu saja. XML populer sebagai sumber data karena menawarkan cara untuk mempertahankan makna semantik data saat berkomunikasi antar aplikasi yang berbeda.

## Mengisi Templat Gabungan dengan Data dari XML menggunakan DataSet

XML adalah standar universal untuk pertukaran data, dan format dokumen Microsoft Word adalah format paling populer untuk templat Mail Merge. Oleh karena itu, kemampuan untuk menjalankan Mail Merge dari file XML ke dokumen templat Word telah menjadi persyaratan umum.

Microsoft Word tidak menyediakan metode langsung untuk bekerja dengan data XML sebagai sumber data untuk operasi Mail Merge, sedangkan Aspose.Words memungkinkan Anda melakukan operasi Mail Merge dengan data dari sumber data XML. Perhatikan bahwa struktur dokumen XML juga dapat divariasikan dan data akan tetap terbaca dengan benar. Ini memungkinkan berbagai jenis dokumen XML digabungkan dengan mudah.

Gunakan metode `ReadXML` untuk membaca skema XML dan data ke dalam objek `DataSet`. Objek ini kemudian digunakan sebagai sumber data untuk mail merge.

{{% alert color="primary" %}}

Anda dapat menggunakan templat yang sama untuk sumber data yang berbeda.

{{% /alert %}}

XML berikut berisi data yang diperlukan untuk mengisi templat penggabungan:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

Contoh kode berikut menunjukkan cara memuat data XML ke dalam DataSet dan kemudian menggunakannya sebagai sumber data:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Anda dapat melihat perbedaan antara templat sebelum menjalankan operasi Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

Dan setelah menjalankan operasi Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
