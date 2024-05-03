---
title: Cara Menambahkan Group Bentuk ke dalam Dokumen Word
second_title: Aspose.Words Sitemap Java
articleTitle: Sitemap Group Bentuk dalam Dokumen Word
linktitle: Sitemap Group Bentuk dalam Dokumen Word
description: "Groupbentuk ing dan tidak memkelompokkan menggunakan JavaSitemap"
type: docs
weight: 290
url: /id/java/how-to-add-group-shape-into-a-word-document/
---

Kadang-kadang Anda perlu menambahkan group shape ke dalam dokumen Word. Sitemap group shape terdiri dari beberapa bentuk

Sitemap Microsoft Word, Anda dapat dengan cepat menambahkan group shape menggunakan Group perintah/button. Bentuk individu dalam kelompok dapat dipindahkan secara terpisah.

Sitemap Aspose.Words sangat mudah untuk menambahkan group shape Login [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Sitemap **Shape** dibuat secara terpisah menggunakan [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) kelas dan kemudian ditambahkan [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Sitemap [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) Login

Di bawah ini adalah beberapa `Shape` jenis yang didukung Aspose.WordsSitemap Untuk daftar lengkap, silakan kunjungi [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)Sitemap

- Login
- Login
- Login
- Login
- Login
- Sitemap
- Login
- Login
- Login
- Sitemap
- Login

**Example**

*Sitemap group shape ke dalam dokumen Word. Sitemap


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
