---
title: Bir Kelime Belgesine Group Şekli Nasıl Eklenir?
second_title: Aspose.Words için ` Java
articleTitle: Word Belgelerinde Group Şekillerle Çalışmak
linktitle: Word Belgelerinde Group Şekillerle Çalışmak
description: "Şekilleri Grouping ve ungroupoing yapmak için Java."
type: docs
weight: 290
url: /tr/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Bazen bir Word belgesine bir group shape eklemeniz gerekir. Böyle bir group shape birden çok şekilden oluşur

Bir Microsoft Word'de, bir group shape eklemek için Group komutunu/düğmesini kullanarak hızlıca ekleyebilirsiniz. Bir gruptaki bireysel şekiller ayrı olarak hareket ettirilebilir.

Aspose.Words içinde, bir group shape oluşturmak için [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) sınıfını kullanmak çok kolaydır. **Shape** ayrı olarak [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) sınıfı kullanılarak oluşturulur ve sonra [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) nesnesine [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) yöntemi kullanılarak eklenir.

İşte `Shape` türlerinden bazıları Aspose.Words'de desteklenmektedir: Tam liste için lütfen [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/) adresini ziyaret edin:

"- Dikdörtgen"
- Yuvarlak Dikdörtgen
- Yuvarlak Dikdörtgen
- Elips
- Elmas
- Üçgen
- Sağ Üçgen
- Paralelogram
- Trapezoit
- Altıgen
- Sekizgen

**Example**

Bir Word belgesine bir group shape ekle


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
