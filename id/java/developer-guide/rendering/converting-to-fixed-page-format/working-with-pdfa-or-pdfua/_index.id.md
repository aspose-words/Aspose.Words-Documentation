---
title: Bekerja dengan PDF/Aatau PDF/UA
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan PDF/Aatau PDF/UA
linktitle: Bekerja dengan PDF/Aatau PDF/UA
description: "Konversikan ke PDF/A-1, PDF/A-2, PDF/A-4 dan PDF/UA menggunakan Java. Ada beberapa masalah saat mengonversi ke dokumen PDF/A, dan Aspose.Words untuk Java menyelesaikannya."
type: docs
weight: 28
url: /id/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Format PDF/A dan PDF/UA memberlakukan beberapa persyaratan terkait konten dokumen yang tidak dapat dipenuhi selama konversi otomatis dari dokumen dalam format Word menjadi PDF. Persyaratan ini harus diverifikasi dan dikoreksi baik dalam dokumen Word sebelum konversi atau dalam dokumen PDF setelah konversi untuk menghasilkan dokumen yang sepenuhnya sesuai dengan PDF/A dan PDF/UA.

Persyaratan dasar adalah untuk struktur atau font dokumen PDF/A dan PDF/UA, yang akan kita bahas di bagian berikut.

{{% alert color="primary" %}}

Harap perhatikan bahwa keluaran PDF/UA-1 juga akan sesuai dengan WCAG 2.0 dan Bagian 508.

{{% /alert %}}

## Persyaratan Struktur Dokumen

Persyaratan saat ini adalah untuk PDF/A-1a, PDF/A-2a, PDF/A-4, dan format PDF/UA-1.

Ada beberapa nuansa tentang cara kerja Aspose.Words saat mengonversi ke berbagai standar format PDF. Mereka harus diperhitungkan jika Anda ingin mendapatkan hasil yang diharapkan.

{{% alert color="primary" %}}

Perhatikan bahwa tidak ada persyaratan struktur logis untuk PDF/A-4. Untuk alasan ini, kami tidak mempertimbangkan versi PDF/A-4 di bagian "Persyaratan Struktur Dokumen" ini.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Tidak disarankan bagi penulis untuk menghasilkan informasi struktural atau semantik menggunakan proses otomatis tanpa verifikasi yang sesuai.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Subbagian di bawah ini menjelaskan nuansa cara kerja Aspose.Words saat mengonversi ke berbagai standar format PDF dan opsi untuk solusinya.

### Tipe Struktur

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Dokumen PDF adalah urutan blok seperti judul, paragraf, tabel, dan lainnya. Blok-blok ini membentuk struktur dokumen-kuat atau lemah.

Struktur kuat dan lemah berlaku untuk PDF/A. dokumen Microsoft Word memiliki struktur yang lemah menurut desain, dan Aspose.Words membuat PDF dengan struktur yang lemah masing-masing dan juga menghasilkan judul sesuai dengan tingkat garis besar paragraf dalam dokumen sumber.

Untuk dokumen PDF/UA-1 dengan struktur yang lemah, nomor heading juga harus berurutan tanpa celah.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Struktur tingkat blok dapat mengikuti salah satu dari dua paradigma utama:</p>
    </ol>
      <li>Sangat terstruktur. Elemen pengelompokan bersarang ke level sebanyak yang diperlukan untuk mencerminkan pengorganisasian materi menjadi artikel, bagian, subbagian, dan sebagainya. Pada setiap level, turunan dari elemen pengelompokan harus terdiri dari heading (H), satu atau lebih paragraf (P) untuk konten pada level tersebut, dan mungkin satu atau lebih elemen pengelompokan tambahan untuk subbagian bersarang.</li>
      <li>Terstruktur dengan lemah. Dokumen ini relatif datar, mungkin hanya memiliki satu atau dua tingkat elemen pengelompokan, dengan semua judul, paragraf, dan BLSEs lainnya sebagai turunan langsungnya. Dalam hal ini, pengorganisasian materi tidak tercermin dalam struktur logisnya; namun, hal itu dapat diungkapkan dengan penggunaan judul dengan tingkatan tertentu(H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Untuk dokumen PDF/UA-1, spesifikasi berisi tambahan yang terkait dengan level heading (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Jika semantik dokumen memerlukan urutan header yang menurun, urutan tersebut harus dilanjutkan dalam urutan numerik yang ketat dan tidak boleh melewati level heading yang mengintervensi. H1 H2 H3 diperbolehkan, sedangkan H1 H3 tidak.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Untuk memastikan keluaran yang benar, pengguna harus memastikan bahwa konten dokumen sumber diatur dengan benar dan tingkat kerangka ditentukan dengan benar untuk paragraf. Jika tidak, pengguna harus memverifikasi dan memperbaiki struktur dokumen keluaran PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara mengatur level outline di Microsoft Word atau memeriksa dan memperbaiki struktur dokumen output PDF (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Dalam gaya Microsoft Word default "Heading X" dapat digunakan untuk mengatur level outline:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Selain itu, level outline dapat dicentang atau diubah di jendela "Paragraph":</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Di Acrobat, struktur dokumen dapat dicentang atau diubah di panel "Tag":</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Menandai Konten sebagai Artefak

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Saat ini, Aspose.Words menandai header dan footer halaman, pemisah catatan, sel header tabel berulang, dan gambar dekoratif sebagai artefak. Perhatikan bahwa daftar ini dapat diperbarui di masa mendatang.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Objek grafik dalam dokumen dapat dibagi menjadi dua kelas:</p>
    </ol>
      <li>Isi sebenarnya dari sebuah dokumen terdiri dari objek yang mewakili materi yang awalnya diperkenalkan oleh pembuat dokumen.</li>
      <li>Artefak adalah objek grafik yang bukan merupakan bagian dari konten asli penulis, melainkan dihasilkan oleh penulis yang sesuai selama pagination, tata letak, atau proses mekanis lainnya.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Jika dokumen berisi konten lain yang harus ditandai sebagai artefak, atau jika salah satu konten artefak adalah konten asli, pelanggan harus memperbaikinya di output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara menandai bentuk sebagai dekoratif di Microsoft Word atau menandai bentuk sebagai artefak di dokumen keluaran PDF (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Misalnya, bentuk dapat ditandai sebagai dekoratif di Microsoft Word, sehingga akan diekspor ke PDF sebagai artefak:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Anda dapat menandai bentuk sebagai artefak di output PDF:</p>
   <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Selain itu, Anda dapat mengalihkan teks di header dari artefak ke konten nyata di output PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spesifikasi Bahasa Alami

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Bahasa teks ditentukan dalam dokumen Microsoft Word. Aspose.Words mengekspor bahasa yang ditentukan ke keluaran PDF dengan atribut *Lang* yang dilampirkan ke urutan konten yang ditandai atau tag Rentang-ini dikendalikan oleh properti [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag). Umumnya tidak ada masalah bahasa saat teks dimasukkan oleh pengguna melalui Microsoft Word. Namun ada kemungkinan bahasanya mungkin tidak akurat jika teks dibuat secara otomatis.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
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
    <p>Bahasa alami harus dideklarasikan ... Perubahan dalam bahasa alami harus dideklarasikan.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara memastikan bahwa bahasa ditentukan dengan benar (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Pengguna harus memastikan bahwa bahasa tersebut ditentukan dengan benar di salah satu dokumen sumber Word:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Atau dokumen keluaran PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Keterangan Gambar

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word dokumen memungkinkan pengguna untuk menambahkan keterangan gambar.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Keterangan yang menyertai gambar harus diberi tag dengan tag Keterangan.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Saat ini Aspose.Words tidak dapat mengekspor teks dengan tag Teks, jadi teks tersebut harus ditandai di output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara menyisipkan teks (perluas untuk melihat detail).</summary>
    <p></p>
    <p>Dalam Microsoft Word, teks dapat disisipkan melalui menu konteks:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Di Acrobat, teks dapat ditambahkan atau diubah melalui dialog Properti `Object`:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Deskripsi Alternatif

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word dokumen memungkinkan pengguna menambahkan teks alternatif ke gambar, bentuk, dan tabel. Aspose.Words mengekspor teks alternatif tersebut ke keluaran PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Semua elemen struktur yang isinya tidak memiliki analogi tekstual alami yang telah ditentukan sebelumnya, mis. gambar, rumus, dll., harus memberikan deskripsi teks alternatif menggunakan entri Alt dalam kamus elemen struktur...</p>
    <p>NOTE Deskripsi alternatif memberikan deskripsi tekstual yang membantu interpretasi yang tepat dari konten non-tekstual yang tidak jelas.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara memastikan bahwa semua elemen memiliki teks alternatif (perluas untuk melihat detail).</summary>
    <p></p>
    <p>Pengguna harus memastikan bahwa semua elemen memiliki teks alternatif di salah satu dokumen sumber Word:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Atau dokumen keluaran PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Deskripsi Alternatif untuk Hyperlink

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Selain poin sebelumnya, dokumen Microsoft Word juga memungkinkan pengguna menambahkan teks alternatif ke hyperlink. Aspose.Words mengekspor teks alternatif tersebut ke keluaran PDF.

Sayangnya, tidak semua aplikasi memungkinkan Anda menyiapkan deskripsi alternatif. Misalnya, Adobe Acrobat saat ini tidak memungkinkan untuk menyiapkan deskripsi seperti itu untuk hyperlink. Tetapi dalam Microsoft Word, Anda dapat melakukannya sebagai berikut:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Terkadang ada masalah bahwa tidak mungkin menyetel teks alternatif untuk hyperlink yang dibuat secara otomatis dalam daftar isi (TOC) melalui Microsoft Word GUI. Aspose.Words dapat memperbarui bidang tersebut dan membuat tautannya sendiri.

Ikuti contoh kode untuk memperbarui bidang `TOC` menggunakan Model Objek Dokumen Aspose.Words (DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Header Tabel

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tabel dalam dokumen PDF/UA-1 harus memiliki header-kolom, baris, atau keduanya. PDF/A hanya memerlukan markup tabel standar, yang tidak memiliki batasan tambahan. Perhatikan bahwa Aspose.Words menghasilkan markup tabel standar secara otomatis.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Tabel harus menyertakan header... Tabel dapat berisi header kolom, header baris, atau keduanya.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara mengatur header tabel (perluas untuk melihat detail).</summary>
    <p></p>
    <p>Header tabel dapat diatur baik dokumen sumber Microsoft Word:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Atau outputnya PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Teks Pengganti

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Spesifikasi tersebut memberi tahu kita hal-hal berikut:</p>
    <p>Semua elemen struktur tekstual yang direpresentasikan dengan cara yang tidak standar, mis., karakter khusus atau grafik sebaris, harus menyediakan teks pengganti menggunakan entri `ActualText` dalam kamus elemen struktur...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word dokumen tidak mengizinkan pengguna menyetel teks pengganti. Jadi ini perlu diverifikasi dan diperbaiki dalam output PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Singkatan dan Akronim Ekspansi

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Semua contoh singkatan dan akronim dalam konten tekstual harus ditempatkan dalam urutan konten yang ditandai dengan tag Rentang yang properti E-nya memberikan perluasan tekstual dari singkatan atau akronim tersebut...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word dokumen tidak mengizinkan pengguna untuk mengatur perluasan singkatan dan akronim. Jadi ini perlu diverifikasi dan diperbaiki dalam output PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Judul Dokumen

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Dokumen dalam PDF/UA-1 harus memiliki judul. |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Spesifikasi tersebut memberi tahu kita hal-hal berikut:</p>
    <p>Aliran metadata dalam kamus katalog dokumen harus berisi entri dc: title, di mana dc adalah awalan yang disarankan untuk skema metadata Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara mengatur judul dokumen (perluas untuk melihat detail).</summary>
    <p></p>
    <p>Judul dokumen dapat diatur baik dokumen sumber Microsoft Word:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Atau outputnya PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Persyaratan Fonta

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ada juga sejumlah nuansa bekerja dengan font saat mengonversi ke PDF/A-1, PDF/A-2, PDF/A-4 atau format PDF/UA-1 menggunakan Aspose.Words. Mereka harus diperhitungkan jika Anda ingin menghindari kemungkinan masalah dengan dokumen keluaran.

Bagian di bawah ini menjelaskan nuansa dan opsi seperti itu untuk solusinya.

### Persyaratan Hukum Font

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words tidak memverifikasi batasan hukum dari font yang digunakan-terserah pengguna. Dengan kata lain, pengguna tidak boleh menyediakan font yang tidak sesuai untuk konversi PDF menggunakan Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Hanya program font yang dapat disematkan secara legal dalam file untuk rendering universal tanpa batas yang boleh digunakan.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (kutipan yang sama persis dalam dua spesifikasi)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Penggunaan mesin terbang `.notdef` dilarang. Mesin terbang `.notdef` akan muncul jika dokumen berisi karakter yang tidak ada dalam font yang dipilih dan yang juga tidak dapat diselesaikan melalui mekanisme Fallback Font.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Dokumen yang sesuai tidak boleh berisi referensi ke .notdef glyph dari teks mana pun yang menampilkan operator, terlepas dari mode rendering teks, dalam aliran konten apa pun.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (kutipan yang sama persis dalam dua spesifikasi)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: cara menghapus atau mengganti karakter ini (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Pengguna harus menghapus atau mengganti karakter ini di salah satu dokumen sumber Word:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Atau dokumen keluaran PDF menggunakan alat " Edit PDF":</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Area Penggunaan Pribadi (PUA)

| PDF tingkat kepatuhan standar dalam Aspose.Words | Adanya persyaratan |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Karakter Private Use Area (PUA) sebagian besar muncul untuk font simbolik Windows seperti "Symbol", "Wingdings", "Webdings", dan lainnya. Format Microsoft Word tidak menyediakan opsi untuk menyimpan teks aktual untuk karakter.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami hal berikut (perluas untuk melihat detailnya):</summary>
    <p></p>
    <p>Untuk kesesuaian Level A saja, untuk karakter apa pun ... itu dipetakan ke kode atau kode di Area Penggunaan Pribadi Unicode (PUA), entri ActualText... harus ada untuk karakter ini atau urutan karakter yang menjadi bagian dari karakter tersebut.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" adalah font Unicode Windows yang dapat digunakan sebagai alternatif font simbolik.

{{% alert color="secondary" %}}
<details>
    <summary>Di blok ini, Anda dapat melihat contoh: apa yang harus dilakukan pengguna untuk menyelesaikan masalah dengan font simbolik (perluas untuk melihat detailnya).</summary>
    <p></p>
    <p>Ganti font simbolik dengan font Unicode di dokumen sumber Word:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Atau tambahkan entri ActualText ke karakter bermasalah dalam dokumen PDF keluaran:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
