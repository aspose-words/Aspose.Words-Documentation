---
title: Sisipkan dan Lampirkan Dokumen
second_title: Aspose.Words untuk Python via .NET
articleTitle: Sisipkan dan Lampirkan Dokumen
linktitle: Sisipkan dan Lampirkan Dokumen
description: "Gabungkan dokumen menjadi satu: masukkan atau tambahkan dokumen ke dokumen baru atau yang sudah ada menggunakan cari dan ganti, gabungkan bidang, bookmark, atau cukup di akhir dokumen di Python."
type: docs
weight: 80
url: /id/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Terkadang diperlukan untuk menggabungkan beberapa dokumen menjadi satu. Anda dapat melakukan ini secara manual atau Anda dapat menggunakan fitur penyisipan atau penambahan Aspose.Words.

Operasi penyisipan memungkinkan Anda memasukkan konten dokumen yang dibuat sebelumnya ke dalam dokumen baru atau yang sudah ada.

Pada gilirannya, fitur tambahkan memungkinkan Anda menambahkan dokumen hanya di akhir dokumen lain.

Artikel ini menjelaskan cara menyisipkan atau menambahkan dokumen ke dokumen lain dengan berbagai cara dan menjelaskan properti umum yang dapat Anda terapkan saat menyisipkan atau menambahkan dokumen.

## Masukkan Dokumen

Seperti disebutkan di atas, di Aspose.Words, sebuah dokumen direpresentasikan sebagai pohon node, dan operasi memasukkan satu dokumen ke dokumen lain adalah menyalin node dari pohon dokumen pertama ke pohon dokumen kedua.

Anda dapat menyisipkan dokumen di berbagai lokasi dengan cara berbeda. Misalnya, Anda bisa menyisipkan dokumen melalui operasi penggantian, bidang penggabungan selama operasi penggabungan, atau melalui penanda.

Anda juga dapat menggunakan metode [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) atau [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), yang mirip dengan menyisipkan dokumen dalam Microsoft Word, untuk menyisipkan seluruh dokumen pada posisi kursor saat ini tanpa ada impor sebelumnya.

Contoh kode berikut menunjukkan cara menyisipkan dokumen menggunakan metode **masukkan_dokumen**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Contoh kode berikut menunjukkan cara menyisipkan dokumen menggunakan metode **masukkan_dokumen_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Subbagian berikut menjelaskan opsi di mana Anda dapat menyisipkan satu dokumen ke dokumen lain.

### Masukkan Dokumen di Bookmark

Anda dapat mengimpor file teks ke dalam dokumen dan menyisipkannya tepat setelah penanda yang telah Anda tetapkan dalam dokumen. Untuk melakukan ini, buat paragraf yang diberi bookmark di mana Anda ingin dokumen disisipkan.

Contoh pengkodean berikut menunjukkan cara menyisipkan konten satu dokumen ke bookmark di dokumen lain:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Perhatikan bahwa penanda tidak boleh menyertakan beberapa paragraf atau teks yang Anda inginkan untuk muncul di dokumen hasil akhir Anda.

{{% /alert %}}

## Tambahkan Dokumen

Anda mungkin memiliki kasus penggunaan di mana Anda perlu menyertakan halaman tambahan dari dokumen ke akhir dokumen yang sudah ada. Untuk melakukan ini, Anda hanya perlu memanggil metode [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) untuk menambahkan dokumen ke akhir dokumen lainnya.

{{% alert color="primary" %}}

Perhatikan bahwa [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) adalah metode tingkat simpul dalam dokumen. Misalnya, Anda bisa membuat paragraf, mengatur properti pemformatan, lalu menambahkannya sebagai anak ke badan menggunakan metode [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan dokumen ke akhir dokumen lain:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Impor dan Sisipkan Node Secara Manual

Aspose.Words memungkinkan Anda menyisipkan dan menambahkan dokumen secara otomatis tanpa persyaratan impor sebelumnya. Namun, jika Anda perlu menyisipkan atau menambahkan simpul tertentu pada dokumen Anda, seperti bagian atau paragraf, Anda harus mengimpor simpul tersebut secara manual terlebih dahulu.

Saat Anda perlu menyisipkan atau menambahkan satu bagian atau paragraf ke bagian atau paragraf lainnya, pada dasarnya Anda perlu mengimpor node dari pohon simpul dokumen pertama ke bagian atau paragraf kedua menggunakan metode [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). Setelah mengimpor node, Anda perlu menggunakan metode [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) untuk memasukkan node baru setelah/sebelum node referensi. Hal ini memungkinkan Anda untuk menyesuaikan proses penyisipan dengan mengimpor node dari dokumen dan menyisipkannya pada posisi tertentu.

Anda juga dapat menggunakan metode [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) untuk menambahkan simpul baru yang ditentukan ke akhir daftar simpul anak, misalnya, jika Anda ingin menambahkan konten di tingkat paragraf, bukan di tingkat bagian.

Contoh kode berikut menunjukkan cara mengimpor node secara manual dan menyisipkannya setelah node tertentu menggunakan metode [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Impor membuat node baru yang merupakan salinan dari node asli dan cocok untuk dimasukkan ke dalam dokumen tujuan.

{{% /alert %}}

Konten diimpor ke dokumen tujuan bagian demi bagian, yang berarti bahwa pengaturan, seperti pengaturan halaman dan header atau footer, dipertahankan selama impor. Penting juga untuk dicatat bahwa Anda dapat menentukan pengaturan pemformatan saat Anda menyisipkan atau menambahkan dokumen untuk menentukan bagaimana dua dokumen digabungkan.

## Properti Umum untuk Menyisipkan dan Menambahkan Dokumen

Metode [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) dan [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) menerima [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) dan [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) sebagai parameter masukan. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) memungkinkan Anda mengontrol bagaimana pemformatan dokumen digabungkan saat Anda mengimpor konten dari satu dokumen ke dokumen lain dengan memilih mode format berbeda seperti [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), dan [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) memungkinkan Anda memilih opsi impor yang berbeda seperti [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), dan [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words memungkinkan Anda menyesuaikan visualisasi dokumen yang dihasilkan ketika dua dokumen ditambahkan bersama dalam operasi penyisipan atau penambahan dengan menggunakan [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) dan [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). Properti [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) berisi semua atribut suatu bagian seperti [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), dan lain-lain. Kasus penggunaan yang paling umum adalah menyetel properti [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) untuk menentukan apakah konten yang ditambahkan akan muncul di halaman yang sama atau dipecah menjadi halaman baru.

{{% alert color="primary" %}}

Perhatikan bahwa [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) dan [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) tidak mengontrol bagaimana dua dokumen disisipkan/ditambahkan bersama-sama. Mereka hanya mengizinkan Anda mengubah tampilan dokumen hasil Anda.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan satu dokumen ke dokumen lain sambil menjaga agar konten tidak terpecah menjadi dua halaman:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
