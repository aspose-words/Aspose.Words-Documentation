---
title: Cara Menambahkan Bentuk Group ke dalam Dokumen Word
second_title: Aspose.Words untuk .NET
articleTitle: Cara Menambahkan Bentuk Group ke dalam Dokumen Word
linktitle: Bekerja dengan Bentuk Group di Dokumen Word
description: "Grouping dan memisahkan bentuk menggunakan C#."
type: docs
weight: 290
url: /id/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda perlu menambahkan group shape ke dalam dokumen Word. group shape semacam itu terdiri dari berbagai bentuk.

Di Microsoft Word, Anda dapat dengan cepat menambahkan group shape menggunakan perintah/tombol Group. Bentuk individu dalam grup dapat dipindahkan secara terpisah.

Di Aspose.Words sangat mudah untuk menambahkan group shape menggunakan kelas [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). **Shape** dibuat secara terpisah menggunakan kelas [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) dan kemudian ditambahkan ke objek [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) menggunakan metode [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

Contoh kode berikut menunjukkan cara menambahkan group shape ke dalam dokumen Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Berikut adalah beberapa jenis `Shape` yang didukung di Aspose.Words:

- Persegi panjang
- Bulat, Persegi Panjang
- Bulat, Persegi Panjang
- Elips
- Berlian
- Segitiga
- Segitiga siku-siku
- Jajar genjang
- Trapesium
- segi enam
- Oktagon

Untuk daftar lengkapnya, silakan cek kelas [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}
