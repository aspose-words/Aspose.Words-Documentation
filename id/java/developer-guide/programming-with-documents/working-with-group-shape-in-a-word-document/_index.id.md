---
title: Cara Menambahkan Group Shape ke dalam Dokumen Word
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Group Shapes dalam Dokumen Word
linktitle: Bekerja dengan Group Shapes dalam Dokumen Word
description: "Pengelompokan dan pengelompokan bentuk menggunakan Java."
type: docs
weight: 290
url: /id/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda perlu menambahkan group shape ke dalam dokumen Word. group shape seperti itu terdiri dari banyak bentuk.

Di Microsoft Word, Anda dapat menambahkan group shape dengan cepat menggunakan perintah/tombol Grup. Bentuk individu dalam grup dapat dipindahkan secara terpisah.

Dalam Aspose.Words sangat mudah untuk menambahkan group shape menggunakan kelas [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). **Shape** dibuat secara terpisah menggunakan kelas [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) dan kemudian ditambahkan dalam objek [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) menggunakan metode [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

Di bawah ini adalah beberapa tipe `Shape` yang didukung di Aspose.Words. Untuk daftar lengkap, silakan kunjungi [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

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

**Contoh**

*Add a group shape into a Word document.*


{{< highlight csharp >}}
package AddGroupShape;
import Aspose.Words.*;
import Aspose.Words.Drawing.*;
import Aspose.Words.Fields.*;
public class Program
{
	public static void main(String[] args)
	{
		Aspose.Words.Document doc = new Aspose.Words.Document();
	        doc.EnsureMinimum();
		GroupShape gs = new GroupShape(doc);
		Aspose.Words.Drawing.Shape shape = new Aspose.Words.Drawing.Shape(doc, Aspose.Words.Drawing.ShapeType.AccentBorderCallout1);
		shape.Width = 100;
		shape.Height = 100;
		gs.AppendChild(shape);
		Aspose.Words.Drawing.Shape shape1 = new Aspose.Words.Drawing.Shape(doc, Aspose.Words.Drawing.ShapeType.ActionButtonBeginning);
		shape1.Left = 100;
		shape1.Width = 100;
		shape1.Height = 200;
		gs.AppendChild(shape1);
	        gs.Width = 200;
		gs.Height = 200;
		gs.CoordSize = new System.Drawing.Size(200, 200);
		DocumentBuilder builder = new DocumentBuilder(doc);
		builder.InsertNode(gs);
		doc.Save("c:\\TestFile.docx");
	}
}
{{< /highlight >}}
