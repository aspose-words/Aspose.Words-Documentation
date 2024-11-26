---
title: Como adicionar Group Shape a um documento do Word
second_title: Aspose.Words para Java
articleTitle: Trabalhar com Group Shapes em documentos do Word
linktitle: Trabalhar com Group Shapes em documentos do Word
description: "Agrupar e desagrupar formas utilizando Java."
type: docs
weight: 290
url: /pt/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Às vezes, você precisa adicionar um group shape em um documento do Word. Tal group shape consiste em múltiplas formas.

Em Microsoft Word, você pode adicionar rapidamente um group shape usando o comando / botão grupo. As formas individuais em um grupo podem ser movidas separadamente.

Em Aspose.Words é muito fácil adicionar uma group shape Usando a classe [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). **Shape** é criado separadamente usando a classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) e, em seguida, adicionado no objeto [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) usando o método [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

Abaixo estão alguns dos `Shape` tipos suportados em Aspose.Words. Para a lista completa, visite [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rectângulo
- RoundRectangle
- RoundRectangle
- Elipse
- Diamante
- Triângulo
- RightTriangle
- Paralelogramo
- Trapézio
- Hexagon
- Octógono

**Exemplo**

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
