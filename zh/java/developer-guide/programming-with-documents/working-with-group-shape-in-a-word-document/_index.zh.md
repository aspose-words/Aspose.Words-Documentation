---
title: 如何将Group Shape添加到Word文档中
second_title: Aspose.Words为Java
articleTitle: 在Word文档中使用Group Shapes
linktitle: 在Word文档中使用Group Shapes
description: "使用Java对形状进行分组和取消分组。"
type: docs
weight: 290
url: /zh/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

有时您需要将group shape添加到Word文档中。 这样的group shape由多个形状组成。

在Microsoft Word中，您可以使用组命令/按钮快速添加group shape。 组中的单个形状可以单独移动。

在Aspose.Words中，使用[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)类添加group shape非常容易。 **Shape**使用[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)类单独创建，然后使用[AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node)方法添加到[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)对象中。

下面是Aspose.Words中支持的一些`Shape`类型。 有关完整列表，请访问[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- 矩形
- RoundRectangle
- RoundRectangle
- 椭圆
- 钻石
- 三角形
- RightTriangle
- 平行四边形
- 梯形,梯形
- 六边形
- 八角,八角

**例子：**

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
