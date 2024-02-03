---
title: Cara Menambahkan Bentuk Group ke File Word
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Bentuk Group di Dokumen Word
linktitle: Bekerja dengan Bentuk Group di Dokumen Word
description: "Tambahkan group shape ke dalam dokumen menggunakan Python."
type: docs
weight: 290
url: /id/python-net/how-to-add-group-shape-into-a-word-document/
---

Terkadang Anda perlu menambahkan group shape ke dalam dokumen Word. group shape semacam itu terdiri dari berbagai bentuk.

Di Microsoft Word, Anda dapat dengan cepat menambahkan group shape menggunakan perintah/tombol Group. Bentuk individu dalam grup dapat dipindahkan secara terpisah.

Di Aspose.Words sangat mudah untuk menambahkan group shape menggunakan kelas [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Bentuk dibuat secara terpisah menggunakan kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) dan kemudian ditambahkan ke objek [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) menggunakan metode [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

Contoh kode berikut menunjukkan cara menambahkan group shape ke dalam dokumen Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Berikut adalah beberapa jenis `Shape` yang didukung di Aspose.Words. Untuk daftar lengkap, silakan lihat enumerasi [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
