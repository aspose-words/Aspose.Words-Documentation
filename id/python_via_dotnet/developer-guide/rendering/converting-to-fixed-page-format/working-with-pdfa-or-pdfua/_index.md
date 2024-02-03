---
title: Bekerja dengan PDF/A atau PDF/UA
second_title: Aspose.Words untuk Python
articleTitle: Bekerja dengan PDF/A atau PDF/UA
linktitle: Bekerja dengan PDF/A atau PDF/UA
description: "Konversikan ke PDF/A-1, PDF/A-2, PDF/A-4 dan PDF/UA menggunakan Python. Ada beberapa masalah saat mengonversi ke dokumen PDF/A, dan Aspose.Words untuk Python menyelesaikannya."
type: docs
weight: 28
url: /id/python-net/working-with-pdfa-or-pdfua/
---

Format PDF/A dan PDF/UA memberlakukan beberapa persyaratan terkait konten dokumen yang tidak dapat dipenuhi selama konversi otomatis dari dokumen dalam format Word ke PDF. Persyaratan ini harus diverifikasi dan diperbaiki baik dalam dokumen Word sebelum konversi atau dalam dokumen PDF setelah konversi untuk menghasilkan dokumen yang sepenuhnya sesuai PDF/A dan PDF/UA.

Persyaratan dasar adalah untuk struktur atau font dokumen PDF/A dan PDF/UA, yang akan kita pertimbangkan di bagian berikut.

{{% alert color="primary" %}}

Harap dicatat bahwa keluaran PDF/UA-1 juga akan sesuai dengan WCAG 2.0 dan Bagian 508.

{{% /alert %}}

## Persyaratan Struktur Dokumen

Persyaratan saat ini adalah untuk format PDF/A-1a, PDF/A-2a, PDF/A-4, dan PDF/UA-1.

Ada beberapa perbedaan dalam cara kerja Aspose.Words saat mengonversi ke berbagai standar format PDF. Mereka harus diperhitungkan jika Anda ingin mendapatkan hasil yang diharapkan.

{{% alert color="primary" %}}

Perhatikan bahwa tidak ada persyaratan struktur logis untuk PDF/A-4. Karena alasan ini, kami tidak mempertimbangkan versi PDF/A-4 di bagian "Persyaratan Struktur Dokumen" ini.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Tidak disarankan bagi penulis untuk menghasilkan informasi struktural atau semantik menggunakan proses otomatis tanpa verifikasi yang tepat.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Subbagian di bawah ini menjelaskan perbedaan cara kerja Aspose.Words saat mengonversi ke berbagai standar format PDF dan opsi untuk solusinya.

### Tipe Struktur

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Dokumen PDF merupakan rangkaian blok seperti judul, paragraf, tabel, dan lain-lain. Blok-blok ini membentuk struktur dokumen – kuat atau lemah.

Struktur kuat dan lemah keduanya valid untuk PDF/A. Dokumen Microsoft Word memiliki struktur yang lemah berdasarkan desain, dan Aspose.Words membuat PDF dengan struktur yang lemah dan juga menghasilkan judul sesuai dengan tingkat garis besar paragraf dalam dokumen sumber.

Untuk dokumen PDF/UA-1 dengan struktur yang lemah, nomor judul juga harus diurutkan tanpa celah.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Struktur tingkat blok dapat mengikuti salah satu dari dua paradigma utama:</p>
    </ol>
      <li>Sangat terstruktur. Elemen pengelompokan disusun sebanyak mungkin tingkatan yang diperlukan untuk mencerminkan pengorganisasian materi menjadi artikel, bagian, subbagian, dan seterusnya. Pada setiap tingkat, turunan elemen pengelompokan harus terdiri dari judul (H), satu atau lebih paragraf (P) untuk konten pada tingkat tersebut, dan mungkin satu atau lebih elemen pengelompokan tambahan untuk subbagian bertingkat.</li>
      <li>Terstruktur dengan lemah. Dokumen ini relatif datar, mungkin hanya memiliki satu atau dua tingkat elemen pengelompokan, dengan semua judul, paragraf, dan BLSE lainnya sebagai turunan langsungnya. Dalam hal ini, pengorganisasian materi tidak tercermin dalam struktur logis; namun, hal ini dapat dinyatakan dengan penggunaan judul dengan tingkat tertentu (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Untuk dokumen PDF/UA-1, spesifikasinya berisi tambahan terkait level heading (perluas untuk melihat detail):</summary>
    <p></p>
    <p>Jika semantik dokumen memerlukan urutan header yang menurun, urutan tersebut harus dilanjutkan dalam urutan numerik yang ketat dan tidak boleh melewatkan tingkat judul di antaranya. H1 H2 H3 diperbolehkan, sedangkan H1 H3 tidak.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Untuk memastikan keluaran yang benar, pengguna harus memastikan bahwa konten dokumen sumber diatur dengan benar dan tingkat kerangka paragraf ditentukan dengan benar. Jika tidak, pengguna harus memverifikasi dan memperbaiki struktur dokumen PDF keluaran.

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara mengatur level garis besar di Microsoft Word atau memeriksa dan memperbaiki struktur dokumen PDF keluaran (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Dalam Microsoft Word, gaya "Heading X" default dapat digunakan untuk mengatur tingkat garis besar:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Selain itu, tingkat kerangka dapat diperiksa atau diubah di jendela "Paragraf":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="Tingkat Garis Besar MW" style="width:800px"/>
    <p>Di Acrobat, struktur dokumen dapat diperiksa atau diubah di panel "Tag":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Menandai Konten sebagai Artefak

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Saat ini, Aspose.Words menandai header dan footer halaman, pemisah catatan, sel header tabel berulang, dan gambar dekoratif sebagai artefak. Perhatikan bahwa daftar ini mungkin diperbarui di masa mendatang.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Objek grafik dalam dokumen dapat dibagi menjadi dua kelas:</p>
    </ol>
      <li>Isi sebenarnya dari suatu dokumen terdiri dari objek-objek yang mewakili materi yang awalnya diperkenalkan oleh penulis dokumen tersebut.</li>
      <li>Artefak adalah objek grafik yang bukan merupakan bagian dari konten asli penulis, melainkan dihasilkan oleh penulis yang menyesuaikan diri dalam proses penomoran halaman, tata letak, atau proses mekanis lainnya.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Jika dokumen berisi konten lain yang harus ditandai sebagai artefak, atau jika konten artefak tersebut merupakan konten asli, pelanggan harus memperbaikinya di PDF keluaran.

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara menandai bentuk sebagai dekoratif di Microsoft Word atau menandai bentuk sebagai artefak di dokumen PDF keluaran (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Misalnya, bentuk dapat ditandai sebagai dekoratif di Microsoft Word, sehingga bentuk tersebut akan diekspor ke PDF sebagai artefak:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="Bentuk Dekoratif MWD" style="width:800px"/>
    <p>Anda dapat menandai bentuk sebagai artefak di keluaran PDF:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfHapusTagKosong" style="width:800px"/>
    <p>Selain itu, Anda juga dapat mengalihkan teks di header dari artefak ke konten nyata di PDF keluaran:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spesifikasi Bahasa Alami

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Bahasa teks ditentukan dalam dokumen Microsoft Word. Aspose.Words mengekspor bahasa tertentu ke PDF keluaran dengan atribut *Lang* yang dilampirkan ke urutan konten yang ditandai atau tag Span – ini dikontrol oleh properti [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/). Secara umum tidak ada masalah bahasa ketika teks dimasukkan oleh pengguna melalui Microsoft Word. Namun ada kemungkinan bahasanya tidak akurat jika teks dibuat secara otomatis.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Bahasa alami default untuk semua teks dalam file harus ditentukan oleh entri Lang di kamus Katalog dokumen.</p>
    <p>Semua konten tekstual dalam file yang berbeda dari bahasa default harus ditunjukkan dengan menggunakan properti `Lang` yang dilampirkan ke urutan konten yang ditandai, atau dengan entri Lang dalam kamus elemen struktur ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Selain itu untuk PDF/UA-1, spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Bahasa alami harus diumumkan… Perubahan dalam bahasa alami harus diumumkan.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: bagaimana memastikan bahwa bahasa ditentukan dengan benar (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Pengguna harus memastikan bahwa bahasa ditentukan dengan benar di dokumen sumber Word:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="Bahasa MW" style="width:800px"/>
    <p>Atau dokumen PDF keluaran:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeBahasa" style="width:800px"/>
</details>
{{% /alert %}}

### Deskripsi Alternatif

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Dokumen Microsoft Word memungkinkan pengguna menambahkan teks alternatif ke gambar, bentuk, dan tabel. Aspose.Words mengekspor teks alternatif tersebut ke PDF keluaran.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Semua elemen struktur yang isinya tidak memiliki analogi tekstual alami yang telah ditentukan sebelumnya, misalnya gambar, rumus, dll., harus menyediakan deskripsi teks alternatif menggunakan entri Alt dalam kamus elemen struktur...</p>
    <p>CATATAN Deskripsi alternatif memberikan deskripsi tekstual yang membantu interpretasi yang tepat terhadap konten non-tekstual yang tidak jelas.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara memastikan bahwa semua elemen memiliki teks alternatif (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Pengguna harus memastikan bahwa semua elemen memiliki teks alternatif di dokumen Word sumber:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTabelAltTeks" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltTeks" style="width:800px"/>
    <p>Atau dokumen PDF keluaran:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltTeks" style="width:800px"/>
</details>
{{% /alert %}}

### Teks Pengganti

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Spesifikasinya memberi tahu kita hal berikut:</p>
    <p>Semua elemen struktur tekstual yang direpresentasikan dengan cara non-standar, misalnya karakter khusus atau grafik sebaris, harus menyediakan teks pengganti menggunakan entri `ActualText` dalam kamus elemen struktur...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Dokumen Microsoft Word tidak mengizinkan pengguna mengatur teks pengganti. Jadi ini perlu diverifikasi dan diperbaiki dalam keluaran PDF:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="Teks Pengganti Acrobat" style="width:800px"/>

### Singkatan dan Perluasan Akronim

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Semua contoh singkatan dan akronim dalam konten tekstual harus ditempatkan dalam urutan konten yang ditandai dengan tag Span yang properti E-nya memberikan perluasan tekstual dari singkatan atau akronim...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Dokumen Microsoft Word tidak mengizinkan pengguna untuk mengatur singkatan dan perluasan akronim. Jadi ini perlu diverifikasi dan diperbaiki dalam keluaran PDF:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitTambahkanExpansionText" style="width:800px"/>

## Persyaratan Font

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ada juga sejumlah nuansa dalam bekerja dengan font saat mengonversi ke format PDF/A-1, PDF/A-2, PDF/A-4 atau PDF/UA-1 menggunakan Aspose.Words. Mereka harus diperhitungkan jika Anda ingin menghindari kemungkinan masalah dengan dokumen keluaran.

Bagian di bawah ini menjelaskan nuansa dan opsi untuk solusinya.

### Persyaratan Hukum Font

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words tidak memverifikasi batasan hukum font yang digunakan – terserah pengguna. Dengan kata lain, pengguna tidak boleh memberikan font yang tidak pantas untuk konversi PDF menggunakan Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Hanya program font yang secara hukum dapat dimasukkan ke dalam file untuk rendering universal tanpa batas yang boleh digunakan.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (persis tanda kutip yang sama dalam dua spesifikasi)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Penggunaan `.notdef` glyph dilarang. `.notdef` glyph akan muncul jika dokumen berisi karakter yang tidak ada dalam font yang dipilih dan juga tidak dapat diselesaikan melalui mekanisme Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Dokumen yang sesuai tidak boleh berisi referensi ke .notdef glyph dari operator yang menampilkan teks mana pun, apa pun mode rendering teksnya, dalam aliran konten apa pun.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (persis tanda kutip yang sama dalam dua spesifikasi)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara menghapus atau mengganti karakter ini (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Pengguna harus menghapus atau mengganti karakter berikut di dokumen Word sumber:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Atau dokumen PDF keluaran menggunakan alat "Edit PDF":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Area Penggunaan Pribadi (PUA)

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Karakter Area Penggunaan Pribadi (PUA) sebagian besar muncul untuk font simbolis Windows seperti "Simbol", "Wingdings", "Webdings", dan lainnya. Format Microsoft Word tidak menyediakan opsi untuk menyimpan teks sebenarnya untuk karakter.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasinya memberi tahu kita hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Hanya untuk kesesuaian Level A, untuk karakter apa pun ... yang dipetakan ke kode atau kode-kode di Unicode Private Use Area (PUA), entri ActualText ... harus ada untuk karakter ini atau rangkaian karakter yang seperti itu karakter adalah bagian.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" adalah font Windows Unicode yang dapat digunakan sebagai alternatif font simbolik.

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: apa yang harus dilakukan pengguna untuk menyelesaikan masalah dengan font simbolik (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Ganti font simbolis dengan font Unicode di dokumen Word sumber:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Atau tambahkan entri ActualText ke karakter bermasalah di dokumen PDF keluaran:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}