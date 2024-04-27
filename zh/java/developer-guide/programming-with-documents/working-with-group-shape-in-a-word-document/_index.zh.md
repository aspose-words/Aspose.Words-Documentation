---
title: 如何添加 Group 形状为单词文档
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与 Group 单词文档中的形状
linktitle: 与 Group 单词文档中的形状
description: "Group使用 Java。 。 。 。"
type: docs
weight: 290
url: /zh/java/how-to-add-group-shape-into-a-word-document/
---

有时你需要添加一个 group shape 输入 Word 文档。 这样 group shape 由多个形状组成。

内 Microsoft Word, 您可以快速添加一个 group shape 使用 Group 命令/按钮。 组中的单个形状可以单独移动.

内 Aspose.Words 增加一个非常容易 group shape 使用 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 课。 **Shape** 单独使用 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 类,然后添加到 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 对象使用 [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) 方法。

下面是一些 `Shape` 支持类型 Aspose.Words。 。 。 。 完整名单请访问 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)编号:

- 对角
- 圆矩形
- 圆矩形
- 椭圆
- 钻石
- 三角地区
- 右转
- 平行图
- 铁皮素
- 六边形
- 奥塔贡

**Example**

* 增加一个 group shape 输入 Word 文档。 * 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。


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
