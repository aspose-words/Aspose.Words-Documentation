---
title: 追加する方法 Group 単語の文書の形
second_title: Aspose.Words お問い合わせ Java
articleTitle: 協力して Group 単語文書の形
linktitle: 協力して Group 単語文書の形
description: "Grouping と ungrouping 形状を使用して Javaお問い合わせ"
type: docs
weight: 290
url: /ja/java/how-to-add-group-shape-into-a-word-document/
---

時々あなたが追加する必要があります group shape ワード文書に。 こんな感じ group shape 複数の形状で構成されます。

インスタグラム Microsoft Word, あなたはすぐに追加することができます group shape 利用する Group コマンド/ボタン。 グループ内の個々の形状を個別に動かすことができます。

インスタグラム Aspose.Words 簡単に追加できます group shape 使用方法 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) クラス。 **Shape** 個別に作成 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) それから加えられた [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) オブジェクトの使用 [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) メソッド。

以下は、 `Shape` 支えられるタイプ Aspose.Wordsお問い合わせ 詳しくはこちらをご覧ください。 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):::

- 長方形
- ラウンド長方形
- ラウンド長方形
- エリス
- ダイヤモンド
- トライアングル
- 右三角形
- パラレルグラム
- 治療
- 六角形
- オクタゴン

**Example**

*追加 group shape ワード文書に。 * 必須


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
