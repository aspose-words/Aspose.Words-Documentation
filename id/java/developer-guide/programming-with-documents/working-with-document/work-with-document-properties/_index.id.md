---
title: Bekerja dengan Properti Dokumen dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Properti Dokumen
linktitle: Bekerja dengan Properti Dokumen
description: "Aspose.Words Sitemap Java memungkinkan menyimpan beberapa informasi yang berguna tentang dokumen Anda, seperti API dan Nomor Versi atau Resmi Date, dalam sifat dokumen bawaan atau kustom."
type: docs
weight: 10
url: /id/java/work-with-document-properties/
---

Sifat dokumen memungkinkan menyimpan beberapa informasi yang berguna tentang dokumen Anda. Sifat-sifat ini dapat dibagi menjadi dua kelompok:

* Sistem atau built-in yang mengandung nilai seperti judul dokumen, nama penulis, statistik dokumen, dan lain-lain.
* Sitemap Didefinisikan pengguna atau kustom, disediakan sebagai pasangan nama di mana pengguna dapat mendefinisikan nama dan nilai.

Hal ini berguna untuk mengetahui bahwa informasi tentang API dan Nomor Versi secara langsung ditulis ke dokumen output. Sebagai contoh, setelah mengkonversi dokumen ke PDF, Aspose.Words mengisi kolom "Aplikasi" dengan "Aspose.Words", dan "Produser PDF" bidang dengan "Aspose.Words Sitemap Java YY.M.N *YY.M.N* adalah versi Aspose.Words digunakan untuk konversi. Untuk detail lebih lanjut, lihat [Nama Generator atau Sampler dalam Output Dokumen](/words/id/java/generator-or-producer-name-included-in-output-documents/)Sitemap

{{% alert color="primary" %}}

Login **tidak dapat langsung** Aspose.Words untuk mengubah atau menghapus informasi ini dari dokumen output.

{{% /alert %}}

## Sifat Dokumen Akses

Untuk mengakses properti dokumen dalam Aspose.Words penggunaan:

* Sitemap [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) untuk mendapatkan sifat bawaan.

* Sitemap [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) untuk mendapatkan sifat kustom.

**BuiltInDocumentProperties** Login **CustomDocumentProperties** Sitemap [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) Sitemap Objek-objek ini dapat diperoleh melalui properti indeks dengan nama atau indeks.

**BuiltInDocumentProperties** tambahan memberikan akses ke properti dokumen melalui satu set properti yang kembali nilai tipe yang sesuai. **CustomDocumentProperties** memungkinkan Anda untuk menambahkan atau menghapus sifat dokumen dari dokumen.

Login [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) kelas memungkinkan Anda untuk mendapatkan nama, nilai, dan jenis properti dokumen. [Nilai [url]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value] Anda untuk menggarisbawahi properti yang berbahan dasar... Setelah Anda tahu apa jenis properti, Anda dapat menggunakan shalat satu {0} Login {1}Login](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) Login **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), untuk memperoleh nilai dari jenis yang tepat.

Contoh kode berikut menunjukkan cara menghitung semua sifat bawaan dan kustom dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)Sitemap

{{% /alert %}}

Sitemap Microsoft Word, Anda dapat mengakses properti dokumen menggunakan menu "File → Properties".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Tambahkan atau Hapus Properti Dokumen

Anda tidak dapat menambahkan atau menghapus sifat dokumen bawaan menggunakan Aspose.WordsSitemap Anda hanya dapat mengubah atau memperbarui nilai-nilai mereka.

Untuk menambahkan sifat dokumen khusus dengan Aspose.Words, Sitemap [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) metode, melewati nama properti baru dan nilai dari jenis yang tepat. Metode mengembalikan yang baru diciptakan **DocumentProperty** Sitemap

Untuk menghilangkan sifat kustom, gunakan [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) metode, melewati nama properti untuk menghapus, atau Meme it [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) metode untuk menghapus properti dengan indeks. Anda juga dapat menghapus semua properti menggunakan Meme it [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) Login

Contoh kode berikut memeriksa apakah properti kustom dengan nama yang diberikan ada dalam dokumen dan menambahkan beberapa sifat dokumen yang lebih kustom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan bagaimana menghapus properti dokumen kustom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Memperbarui Properti Dokumen Built-In

Aspose.Words tidak secara otomatis memperbarui sifat dokumen, seperti Microsoft Word lakukan dengan beberapa properti, tetapi menyediakan metode untuk memperbarui beberapa sifat dokumen bawaan statistik. Sitemap [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) metode untuk mengatur ulang dan memperbarui sifat berikut:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Buat Properti Kustom Baru Bertautan Konten

Aspose.Words Sitemap [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) metode untuk membuat properti dokumen kustom baru yang terkait dengan konten. Properti ini mengembalikan objek properti yang baru diciptakan atau mati jika properti [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) tidak valid.

Contoh kode berikut menunjukkan cara mengkonfigurasi tautan ke properti kustom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Dapatkan Variabel Dokumen

Anda bisa mendapatkan koleksi variabel dokumen menggunakan [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) Login Nama variabel dan nilai-nilai string.

Contoh kode berikut menunjukkan bagaimana menghitung variabel dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)Sitemap

{{% /alert %}}

## Hapus Informasi Pribadi dari Dokumen

Jika Anda ingin berbagi dokumen Word dengan orang lain, Anda mungkin ingin menghapus informasi pribadi seperti nama penulis dan perusahaan. Untuk melakukan ini menggunakan [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) properti untuk mengatur bendera menunjukkan bahwa Meme it Microsoft Word akan menghapus semua informasi pengguna dari komentar, revisi, dan sifat dokumen untuk menyimpan dokumen.

{{% alert color="primary" %}}

Menyiapkan opsi ini tidak benar-benar menghapus informasi pribadi sambil memproses dokumen dalam Aspose.Words dan hanya mempengaruhi Microsoft Word perilaku.

{{% /alert %}}
