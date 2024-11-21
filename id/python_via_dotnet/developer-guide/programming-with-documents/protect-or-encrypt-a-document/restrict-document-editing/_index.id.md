---
title: Batasi Pengeditan Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Batasi Pengeditan Dokumen
linktitle: Batasi Pengeditan Dokumen
description: "Batasi pengeditan dokumen dengan mengatur jenis pembatasan menggunakan Python. Anda juga dapat menghapus perlindungan dan membuat wilayah yang dapat diedit tidak dibatasi."
type: docs
weight: 30
url: /id/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda mungkin perlu membatasi kemampuan untuk mengedit dokumen dan hanya mengizinkan tindakan tertentu dengannya. Hal ini berguna untuk mencegah orang lain mengedit informasi sensitif dan rahasia di dokumen Anda.

Aspose.Words memungkinkan Anda membatasi pengeditan dokumen dengan mengatur jenis pembatasan. Selain itu, Aspose.Words juga memungkinkan Anda menentukan pengaturan perlindungan penulisan untuk suatu dokumen.

Artikel ini menjelaskan cara menggunakan Aspose.Words untuk memilih jenis pembatasan, cara menambah atau menghapus perlindungan, dan cara membuat wilayah yang dapat diedit tidak dibatasi.

## Pilih Jenis Pembatasan Pengeditan

Aspose.Words memungkinkan Anda mengontrol cara Anda membatasi konten menggunakan parameter enumerasi [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Ini akan memungkinkan Anda memilih jenis perlindungan yang tepat seperti berikut:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Semua jenis diamankan dengan kata sandi, dan jika kata sandi ini tidak dimasukkan dengan benar, pengguna tidak akan dapat mengubah konten dokumen Anda secara legal. Jadi, jika dokumen Anda dikembalikan kepada Anda tanpa persyaratan untuk memberikan kata sandi yang diperlukan, ini pertanda ada yang tidak beres.

Jika Anda tidak menetapkan kata sandi saat memilih jenis keamanan, pengguna lain mungkin mengabaikan perlindungan dokumen Anda.

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi yang disetel hanyalah properti dalam dokumen yang dapat dihapus jika properti dokumen diakses. Oleh karena itu, kata sandi tersebut bukan jaminan keamanan dokumen. Metode [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) menunjukkan hal itu.

{{% /alert %}}

## Tambahkan Perlindungan Dokumen

Menambahkan perlindungan ke dokumen Anda adalah proses yang sederhana, karena yang perlu Anda lakukan hanyalah menerapkan salah satu metode perlindungan yang dijelaskan secara rinci di bagian ini.

Aspose.Words memungkinkan Anda melindungi dokumen Anda dari perubahan menggunakan metode [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Metode ini bukan merupakan fitur keamanan dan tidak mengenkripsi dokumen.

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat membatasi pengeditan dengan cara yang sama menggunakan keduanya:

* Batasi Pengeditan (File → Info → Lindungi Dokumen)
* Fitur alternatif – "Batasi Pengeditan" (Tinjau → Lindungi → Batasi Pengeditan)

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan perlindungan kata sandi ke dokumen Anda:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Contoh kode berikut memperlihatkan cara membatasi pengeditan dalam dokumen sehingga hanya pengeditan di bidang formulir yang dimungkinkan:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## Hapus Perlindungan Dokumen

Aspose.Words memungkinkan Anda menghapus perlindungan dari dokumen dengan modifikasi dokumen yang sederhana dan langsung. Anda dapat menghapus perlindungan dokumen tanpa mengetahui kata sandi sebenarnya atau memberikan kata sandi yang benar untuk membuka kunci dokumen dengan menggunakan metode [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Kedua cara menghilangkan tersebut tidak ada perbedaannya.

Contoh kode berikut menunjukkan cara menghapus proteksi dari dokumen Anda:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## Tentukan Wilayah yang Dapat Diedit Tidak Dibatasi

Anda dapat membatasi pengeditan dokumen Anda dan pada saat yang sama mengizinkan perubahan pada bagian tertentu dari dokumen tersebut. Jadi, siapa pun yang membuka dokumen Anda akan dapat mengakses bagian tidak terbatas ini dan membuat perubahan pada konten.

Aspose.Words memungkinkan Anda menandai bagian yang dapat diubah dalam dokumen Anda menggunakan metode [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) dan [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

Contoh kode berikut menunjukkan cara menandai seluruh dokumen sebagai hanya-baca dan menentukan wilayah yang dapat diedit di dalamnya:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

Anda juga dapat memilih batasan pengeditan dokumen yang berbeda untuk bagian yang berbeda.

Contoh kode berikut menunjukkan cara menambahkan batasan untuk keseluruhan dokumen, lalu menghapus batasan untuk salah satu bagian:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
