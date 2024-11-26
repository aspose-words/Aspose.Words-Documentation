---
title: Word文書にGroup Shapeを追加する方法
second_title: Aspose.WordsのためのJava
articleTitle: Word文書でのGroup Shapesの操作
linktitle: Word文書でのGroup Shapesの操作
description: "Javaを使用して図形をグループ化およびグループ化解除します。"
type: docs
weight: 290
url: /ja/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

場合によっては、Word文書にgroup shapeを追加する必要があります。 このようなgroup shapeは複数の図形で構成されます。

Microsoft Wordでは、グループコマンド/ボタンを使用してgroup shapeをすばやく追加できます。 グループ内の個々の図形は別々に移動できます。

Aspose.Wordsでは、[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)クラスを使用してgroup shapeを追加するのは非常に簡単です。 **Shape**は[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)クラスを使用して個別に作成され、[AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node)メソッドを使用して[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)オブジェクトに追加されます。

以下は、Aspose.Wordsでサポートされている`Shape`型の一部です。 完全なリストについては、[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)をご覧ください:

- 長方形
- RoundRectangle
- RoundRectangle
- 楕円
- ダイヤモンド
- トライアングル
- RightTriangle
- 平行四辺形
- 台形
- ヘキサゴン
- オクタゴン

**例を示します。**

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
