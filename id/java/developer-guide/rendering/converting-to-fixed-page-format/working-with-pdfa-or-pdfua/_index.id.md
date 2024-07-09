---
title: PDF/A
second_title: Aspose.Words Sitemap Java
articleTitle: PDF/A
linktitle: PDF/A
description: "Konversi ke PDF / A-1, PDF / A-2, PDF / A-4 dan PDF / U menggunakan JavaSitemap Ada beberapa masalah ketika mengkonversi ke dokumen PDF/A, dan Aspose.Words Sitemap Java menyelesaikannya."
type: docs
weight: 28
url: /id/java/working-with-pdfa-or-pdfua/
---

Format PDF / A dan PDF / U memaksakan beberapa persyaratan yang terkait dengan konten dokumen yang tidak dapat dipenuhi selama konversi otomatis dari dokumen dalam format Word ke PDF. Persyaratan ini harus diverifikasi dan dikoreksi baik dalam dokumen Word sebelum konversi atau dalam dokumen PDF setelah konversi untuk menghasilkan dokumen sesuai PDF / A dan PDF / U.

Persyaratan dasar untuk struktur atau font dokumen PDF/A dan PDF/UA, yang akan kami pertimbangkan di bagian berikut.

{{% alert color="primary" %}}

Harap dicatat bahwa output PDF/UA-1 juga akan sesuai dengan WCAG 2.0 dan Bagian 508.

{{% /alert %}}

## Persyaratan Struktur Dokumen

Persyaratan saat ini adalah untuk format PDF / A-1a, PDF / A-2a, PDF / A-4, dan PDF / U-1.

Ada beberapa nuansa bagaimana Aspose.Words bekerja ketika mengkonversi ke berbagai standar format PDF. Mereka harus diperhitungkan jika Anda ingin mendapatkan hasil yang diharapkan.

{{% alert color="primary" %}}

Perhatikan bahwa tidak ada persyaratan struktur logis untuk PDF / A-4. Untuk alasan ini, kami tidak mempertimbangkan versi PDF / A-4 di bagian "Persyaratan Struktur Document".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Hal ini dapat diinformasikan untuk penulis untuk menghasilkan informasi struktural atau semantik menggunakan proses otomatis tanpa verifikasi yang tepat.</p>
    <p>ISO JPY 108.08504 120.52496</p>
</details>
{{% /alert %}}

Bagian bawah ini menjelaskan nuansa bagaimana Aspose.Words bekerja ketika mengkonversi ke berbagai standar dan opsi format PDF untuk solusi mereka.

### Jenis Struktur

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Dokumen PDF adalah urutan blok seperti judul, paragraf, tabel, dan lain-lain. Blok ini membentuk struktur dokumen - sangat atau lemah.

Struktur yang kuat dan lemah berlaku untuk PDF / A. Microsoft Word dokumen memiliki struktur yang lemah dengan desain, dan Aspose.Words membuat PDF dengan struktur yang lemah masing-masing dan juga menghasilkan judul sesuai dengan tingkat garis besar paragraf dalam dokumen sumber.

Untuk dokumen PDF/UA-1 dengan struktur yang lemah, ini juga diperlukan bahwa nomor judul masuk tanpa celah.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Struktur tingkat blok dapat mengikuti salah satu dari dua paradigma utama:</p>
    </ol>
      <li>Sangat terstruktur. Elemen kelompok bersarang untuk sebanyak mungkin tingkat yang diperlukan untuk mencerminkan organisasi materi menjadi artikel, bagian, penampang, dan sebagainya. Pada setiap tingkat, anak-anak elemen kelompok harus terdiri dari judul (H), satu atau lebih paragraf (P) untuk konten di tingkat itu, dan mungkin satu atau lebih elemen kelompok tambahan untuk subbagian bersarang.</li>
      <li>Terstruktur Dokumen ini relatif datar, hanya memiliki satu atau dua tingkat elemen kelompok, dengan semua judul, paragraf, dan BLSE lainnya sebagai anak-anak segera mereka. Dalam hal ini, organisasi materi tidak tercermin dalam struktur logis; Namun, itu dapat diungkapkan oleh penggunaan judul dengan tingkat tertentu (H1-H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Untuk dokumen PDF/UA-1, spesifikasinya mengandung tambahan yang terkait dengan tingkat judul (expand to see details):</summary>
    <p></p>
    <p>Jika dokumen semantik membutuhkan urutan turunan header, urutan seperti itu akan diproses dalam urutan numerik yang ketat dan tidak akan melewatkan tingkat kepala yang intervensi. H1 H2 H3 tidak diizinkan, sementara H1 H3 tidak.</p>
    <p>ISOArtikel-ID:#006400</p>
</details>
{{% /alert %}}

Untuk memastikan output yang benar, pengguna harus memastikan bahwa konten dokumen sumber diatur dengan benar dan tingkat garis ditentukan dengan benar untuk paragraf. Jika tidak, pengguna harus memverifikasi dan memperbaiki struktur dokumen PDF output.

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: bagaimana mengatur tingkat garis dalam Microsoft Word atau periksa dan memperbaiki struktur dokumen PDF output (dan untuk melihat rincian).</summary>
    <p></p>
    <p>Sitemap Microsoft Word default "Kepala X" gaya dapat digunakan untuk mengatur tingkat garis besar:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Selain itu, tingkat garis besar dapat diperiksa atau diubah di jendela "Paragraf":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Dalam Acrobat struktur dokumen dapat diperiksa atau diubah dalam pane "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Menandai Konten sebagai Artief

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Saat ini, Aspose.Words menandai header halaman dan footer, pemisah catatan, sel header tabel berulang, dan gambar dekoratif sebagai artefak. Perhatikan bahwa daftar ini dapat diperbarui di masa depan.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Objek grafis dalam dokumen dapat dibagi menjadi dua kelas:</p>
    </ol>
      <li>Konten nyata dokumen terdiri dari benda-benda yang mewakili materi yang awalnya diperkenalkan oleh penulis dokumen.</li>
      <li>Artifacts adalah objek grafis yang bukan bagian dari konten asli penulis tetapi lebih dihasilkan oleh penulis yang sesuai dalam perjalanan pagination, tata letak, atau proses mekanis lainnya secara ketat.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Jika dokumen berisi konten lain yang harus ditandai sebagai artefak, atau jika ada konten yang artefak adalah konten nyata, pelanggan harus memperbaiki bahwa dalam PDF output.

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: bagaimana menandai bentuk dekoratif Microsoft Word atau bentuk tanda sebagai artefak dalam dokumen PDF output (expand to see details).</summary>
    <p></p>
    <p>Misalnya, bentuk bisa ditandai sebagai dekoratif dalam Microsoft Word, sehingga mereka akan diekspor ke PDF sebagai artefak:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Anda dapat menandai bentuk sebagai artefak dalam PDF output:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Juga, Anda dapat beralih teks di header dari artefak ke konten nyata dalam PDF output:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spesifikasi Bahasa Alam

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Bahasa teks ditentukan dalam Microsoft Word dokumen. Aspose.Words ekspor bahasa yang ditentukan ke PDF output dengan *Lang* atribut yang melekat pada urutan yang ditandai atau tag Span - dikontrol oleh [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) Login Umumnya tidak ada masalah bahasa ketika teks dimasukkan oleh pengguna melalui Microsoft WordSitemap Tapi ada kemungkinan bahwa bahasa mungkin tidak akurat jika teks dihasilkan secara otomatis.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Bahasa alami default untuk semua teks dalam file harus ditentukan oleh entri Lang di kamus Katalog dokumen.</p>
    <p>Semua konten teks dalam file yang berbeda dari bahasa default harus ditunjukkan dengan menggunakan `Lang` properti yang melekat pada urutan konten yang ditandai, atau dengan entri Lang dalam elemen struktur kamus ...</p>
    <p>ISODi. 08.00 - 12.00/13.30</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Selain PDF/UA-1, spesifikasi memberi tahu kami rincian berikut (kemahan untuk melihat rincian):</summary>
    <p></p>
    <p>Bahasa alami akan dideklarasikan... Perubahan dalam bahasa alami dinyatakan.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: bagaimana memastikan bahwa bahasa ditentukan dengan benar (dan untuk melihat rincian).</summary>
    <p></p>
    <p>Pengguna harus memastikan bahwa bahasa ditentukan dengan benar dalam dokumen Word sumber:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Atau dokumen PDF output:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Gambar Caption

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  Datasheet PDF |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word dokumen memungkinkan pengguna untuk menambahkan keterangan gambar.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Sebuah caption menemani sebuah angka akan ditandai dengan tag Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Sitemap Aspose.Words tidak dapat mengekspor caption dengan tag Caption, sehingga mereka harus ditandai di PDF output.

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: cara memasukkan caption (expand untuk melihat rincian).</summary>
    <p></p>
    <p>Sitemap Microsoft Word, caption dapat dimasukkan melalui menu konteks:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Dalam Acrobat caption bisa ditambahkan atau diubah melalui `Object` dialog properti:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternate Deskripsi

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word dokumen memungkinkan pengguna untuk menambahkan teks alternatif ke gambar, bentuk, dan tabel. Aspose.Words ekspor teks alternatif ke PDF output.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Semua elemen struktur yang kontennya tidak memiliki analog tekstual yang telah ditentukan alami, misalnya gambar, formula, dll., harus memasok deskripsi teks alternatif menggunakan Alt masuk dalam elemen struktur kamus...</p>
    <p>Login Deskripsi Alternate memberikan deskripsi tekstual yang membantu dalam interpretasi yang tepat dari konten non-teksual yang tidak dapat diopaque.</p>
    <p>ISODi. 08.00 - 12.00/13.30 - 17.30</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: bagaimana untuk memastikan bahwa semua elemen memiliki teks alternatif (expand to see details).</summary>
    <p></p>
    <p>Pengguna harus memastikan bahwa semua elemen memiliki teks alternatif dalam dokumen Word sumber:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Atau dokumen PDF output:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Deskripsi Alternate untuk Hyperlinks

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  Datasheet PDF |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Selain titik sebelumnya, Microsoft Word dokumen juga memungkinkan pengguna untuk menambahkan teks alternatif ke hyperlink. Aspose.Words ekspor teks alternatif ke PDF output.

Sayangnya, tidak setiap aplikasi memungkinkan Anda untuk mengatur deskripsi alternatif. Sitemap Adobe Acrobat saat ini tidak memungkinkan untuk mengatur deskripsi tersebut untuk hyperlink. Login Microsoft Word, Anda dapat melakukan ini sebagai berikut:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Kadang-kadang ada masalah yang tidak mungkin untuk mengatur teks alt untuk hyperlink autogenerasi di tabel konten (TOC) melalui Microsoft Word Login Aspose.Words dapat memperbarui bidang tersebut dan menghasilkan tautan sendiri.

Ikuti contoh kode untuk memperbarui `TOC` kolom menggunakan Aspose.Words Document Object Model SitemapDOMSitemap

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

### Kepala Meja

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  Datasheet PDF |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tabel dalam dokumen PDF/UA-1 harus memiliki header – kolom, baris, atau keduanya. PDF / Satu-satunya memerlukan markup tabel standar, yang tidak memiliki batasan tambahan. Login Aspose.Words menghasilkan markup tabel standar secara otomatis.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Tabel harus mencakup header ... Tabel dapat berisi header kolom, header baris atau keduanya.</p>
    <p>ISO-14289-1, 7,5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: bagaimana mengatur header tabel (ketika melihat rincian).</summary>
    <p></p>
    <p>header tabel dapat diatur baik sumber Microsoft Word dokumen:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Atau PDF output:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Penggantian Teks

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Spesifikasi memberitahu kami sebagai berikut:</p>
    <p>Semua elemen struktur teksal yang diwakili dengan cara non-standar, misalnya, karakter kustom atau grafis inline, harus menyediakan teks pengganti menggunakan `ActualText` masuk dalam elemen struktur kamus...</p>
    <p>ISODi. 08.00 - 12.00/13.30 - 17.30</p>
</details>
{{% /alert %}}

Microsoft Word dokumen tidak memungkinkan pengguna untuk mengatur teks pengganti. Jadi ini perlu diverifikasi dan tetap di PDF output:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Akronim dan Akronisasi Ekspansi

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Semua kasus singkatan dan akronim dalam konten teks harus ditempatkan dalam urutan yang ditandai dengan tag Span yang properti E memberikan ekspansi tekstual dari singkatan atau akronim...</p>
<p>ISODi. 08.00 - 12.00/13.30 - 17.30</p>
</details>
{{% /alert %}}

Microsoft Word dokumen tidak memungkinkan pengguna untuk mengatur singkatan dan ekspansi akronim. Jadi ini perlu diverifikasi dan tetap di PDF output:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Judul Dokumen

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  Datasheet PDF |                                                                |
|  Datasheet PDF |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Dokumen di PDF/UA-1 harus memiliki judul |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Spesifikasi memberitahu kami sebagai berikut:</p>
    <p>Aliran Metadata dalam kamus katalog dc dokumen akan mengandung dc: entri judul, di mana prefiks yang disarankan untuk schema metadata Dublin Core ...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: bagaimana mengatur judul dokumen (kemahan untuk melihat rincian).</summary>
    <p></p>
    <p>Judul dokumen dapat diatur baik sumber Microsoft Word dokumen:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Atau PDF output:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Persyaratan Font

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ada juga sejumlah nuansa bekerja dengan font ketika mengkonversi ke PDF / A-1, PDF / A-2, format PDF / A-4 atau PDF / U-1 menggunakan Aspose.WordsSitemap Mereka harus diperhitungkan jika Anda ingin menghindari kemungkinan masalah dengan dokumen output.

Bagian di bawah ini menjelaskan nuansa dan pilihan tersebut untuk solusi mereka.

### Persyaratan Hukum Font

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words tidak memverifikasi pembatasan hukum dari font yang digunakan - itu hingga pengguna. Dengan kata lain, pengguna tidak boleh memberikan font yang tidak pantas untuk konversi PDF menggunakan Aspose.WordsSitemap

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Hanya program font yang secara hukum dapat diatur dalam file untuk unlimited, rendering universal akan digunakan.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (hanya kutipan yang sama dalam dua spesifikasi)</p>
</details>
{{% /alert %}}

### .Login Glyph

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  Datasheet PDF |                           |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Penggunaan `.notdef` glyph dilarang. Login `.notdef` glyph akan muncul jika dokumen berisi karakter yang tidak hadir dalam font yang dipilih dan yang juga tidak dapat diselesaikan melalui mekanisme Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Dokumen yang sesuai tidak mengandung referensi ke .notdef glyph dari setiap operator yang menampilkan teks, terlepas dari mode rendering teks, dalam aliran konten apa pun.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (hanya kutipan yang sama dalam dua spesifikasi)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: cara menghapus atau mengganti karakter ini (dan untuk melihat rincian).</summary>
    <p></p>
    <p>Pengguna harus menghapus atau mengganti karakter ini dalam dokumen Word sumber:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Atau dokumen PDF output menggunakan alat "Edit PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Area Penggunaan Pribadi (PUA)

|  Tingkat kepatuhan standar PDF dalam Aspose.Words |  Kehadiran persyaratan |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  Datasheet PDF |                           |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  Datasheet PDF |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Personal Use Area (PUA) karakter muncul sebagian besar untuk Windows font simbolik seperti "Symbol", "Wingdings", "Webdings", dan lain-lain. Microsoft Word format tidak memberikan pilihan untuk menyimpan teks aktual untuk karakter.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasi memberi tahu kami rincian berikut:</summary>
    <p></p>
    <p>Untuk Tingkat Kesesuaian hanya, untuk karakter apa pun ... yang dipetakan ke kode atau kode di Unicode Private Use Area (PUA), entri ActualText ... akan hadir untuk karakter ini atau urutan karakter yang karakter tersebut adalah bagian.</p>
    <p>ISODi. 08.00 - 12.00/13.30 - 17.30</p>
</details>
{{% /alert %}}

"Segoe UI Simbol" adalah Windows Unicode font yang bisa digunakan sebagai alternatif untuk font simbolik.

{{% alert color="secondary" %}}
<details>
    <summary>Dalam blok ini, Anda dapat melihat contoh: apa yang harus dilakukan pengguna untuk memecahkan masalah dengan font simbolik (ketika melihat rincian).</summary>
    <p></p>
    <p>Ganti font simbolik dengan Unicode satu dalam dokumen Word sumber:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Atau tambahkan entri ActualText ke karakter bermasalah dalam dokumen PDF output:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
