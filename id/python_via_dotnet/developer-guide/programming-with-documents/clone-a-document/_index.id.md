---
title: Mengkloning Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Mengkloning Dokumen
linktitle: Mengkloning Dokumen
type: docs
description: "Kloning dokumen untuk mendapatkan salinan identik menggunakan Python. Saat membuat salinan, node dan properti dokumen asli dikloning."
weight: 70
url: /id/python-net/clone-a-document/
---

Mengkloning dokumen adalah proses membuat salinan identik dari dokumen asli, yang dapat meningkatkan kinerja dan menyelamatkan Anda dari potensi kebocoran memori.

Artikel ini akan menjelaskan kasus penggunaan utama kloning dokumen dan cara membuat klon dokumen menggunakan Aspose.Words.

## Operasi dengan Dokumen Kloning

Operasi kloning memungkinkan Anda mempercepat proses pembuatan dokumen karena Anda tidak perlu memuat dan menguraikan dokumen dari file setiap saat.

Setelah membuat tiruan dokumen Anda, Anda akan dapat mengeditnya dan melakukan operasi berbeda padanya, misalnya membandingkannya dengan dokumen asli, menambahkan atau menyisipkannya ke dokumen lain. Anda juga dapat memodifikasi elemen kloning atau kontennya sebelum memasukkannya ke dalam dokumen lain.

## Membuat Klon Dokumen

Aspose.Words memungkinkan Anda mengkloning dokumen menggunakan metode [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) yang melakukan penyalinan mendalam dokumen dan mengembalikannya. Dengan kata lain, ia akan mendapatkan salinan DOM lengkap. Metode [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) mempercepat pembuatan dokumen, dan Anda hanya memerlukan satu baris kode untuk mendapatkan salinan dokumen Anda.

Kloning menghasilkan dokumen baru dengan konten yang sama seperti aslinya, namun dengan salinan unik dari setiap node dokumen asli. Anda juga dapat menerapkan operasi kloning ke simpul dokumen dengan menggunakan metode simpul [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/), yang memungkinkan Anda menduplikasi simpul dokumen gabungan dengan dan tanpa simpul turunannya.

{{% alert color="primary" %}}

Perhatikan bahwa saat menerapkan metode kloning, semua properti dokumen akan dikloning.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengkloning dokumen dan membuat duplikat bagian dalam dokumen itu:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
