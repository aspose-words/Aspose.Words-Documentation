---
title: Mengkloning Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Mengkloning Dokumen
linktitle: Mengkloning Dokumen
type: docs
description: "Kloning dokumen untuk mendapatkan salinan identik menggunakan C#. Saat membuat salinan, node dan properti dokumen asli dikloning."
weight: 70
url: /id/net/clone-a-document/
---

Mengkloning dokumen adalah proses membuat salinan identik dari dokumen asli, yang dapat meningkatkan kinerja dan menyelamatkan Anda dari potensi kebocoran memori.

Artikel ini akan menjelaskan kasus penggunaan utama kloning dokumen dan cara membuat klon dokumen menggunakan Aspose.Words.

## Operasi dengan Dokumen Kloning

Operasi kloning memungkinkan Anda mempercepat proses pembuatan dokumen karena Anda tidak perlu memuat dan menguraikan dokumen dari file setiap saat.

Setelah membuat tiruan dokumen Anda, Anda akan dapat mengeditnya dan melakukan operasi berbeda padanya, misalnya membandingkannya dengan dokumen asli, menambahkan atau menyisipkannya ke dokumen lain. Anda juga dapat memodifikasi elemen kloning atau kontennya sebelum memasukkannya ke dalam dokumen lain.

## Membuat Klon Dokumen

Aspose.Words memungkinkan Anda mengkloning dokumen menggunakan metode [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) yang melakukan penyalinan mendalam dokumen dan mengembalikannya. Dengan kata lain, ia akan mendapatkan salinan DOM lengkap. Metode `Clone` mempercepat pembuatan dokumen, dan Anda hanya memerlukan satu baris kode untuk mendapatkan salinan dokumen Anda.

Kloning menghasilkan dokumen baru dengan isi yang sama seperti aslinya, namun dengan salinan unik dari masing-masing [nodes](https://reference.aspose.com/words/net/aspose.words/node/) dokumen asli. Anda juga dapat menerapkan operasi kloning ke simpul dokumen dengan menggunakan metode simpul [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/), yang memungkinkan Anda menduplikasi simpul dokumen gabungan dengan dan tanpa simpul turunannya.

{{% alert color="primary" %}}

Perhatikan bahwa saat menerapkan metode kloning, semua properti dokumen akan dikloning.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengkloning dokumen dan membuat duplikat bagian dalam dokumen itu:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
