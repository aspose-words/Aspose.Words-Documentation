---
title: Cara Menambahkan Group Shape ke dalam Dokumen Word
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Group Shapes di Dokumen Word
linktitle: Bekerja dengan Group Shapes di Dokumen Word
description: "Pengelompokan dan pengelompokan bentuk menggunakan C++."
type: docs
weight: 290
url: /id/cpp/how-to-add-group-shape-into-a-word-document/
---

Terkadang Anda perlu menambahkan group shape ke dalam dokumen Word. group shape seperti itu terdiri dari banyak bentuk.

Di Microsoft Word, Anda dapat menambahkan group shape dengan cepat menggunakan perintah/tombol Grup. Bentuk individu dalam grup dapat dipindahkan secara terpisah.

Dalam Aspose.Words sangat mudah untuk menambahkan group shape menggunakan kelas [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). Bentuk dibuat secara terpisah menggunakan kelas [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) dan kemudian ditambahkan ke objek **GroupShape** menggunakan metode [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Contoh kode berikut menunjukkan cara menambahkan group shape ke dalam dokumen Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Di bawah ini adalah beberapa tipe `Shape` yang didukung di Aspose.Words. Untuk daftar lengkapnya, silakan kunjungi [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Persegi panjang
- RoundRectangle
- RoundRectangle
- Ellipse
- Berlian
- Segitiga
- RightTriangle
- Jajaran genjang
- Trapesium
- Hexagon
- Octagon

{{% /alert %}}