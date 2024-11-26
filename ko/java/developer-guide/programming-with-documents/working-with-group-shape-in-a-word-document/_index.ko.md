---
title: 단어 문서에Group Shape을 추가하는 방법
second_title: Aspose.WordsJava
articleTitle: 워드 문서에서Group Shapes작업
linktitle: 워드 문서에서Group Shapes작업
description: "Java을 사용하여 도형 그룹화 및 그룹 해제."
type: docs
weight: 290
url: /ko/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

때때로 단어 문서에group shape을 추가해야 합니다. 이러한group shape은 여러 모양으로 구성됩니다.

Microsoft Word에서 그룹 명령/버튼을 사용하여group shape을 빠르게 추가할 수 있습니다. 그룹의 개별 모양은 별도로 이동할 수 있습니다.

Aspose.Words에서는[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)클래스를 사용하여group shape를 추가하는 것이 매우 쉽습니다. **Shape**는[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)클래스를 사용하여 별도로 생성 된 다음[AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node)메소드를 사용하여[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)객체에 추가됩니다.

다음은Aspose.Words에서 지원되는`Shape`유형 중 일부입니다. 전체 목록은[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)을 참조하십시오.:

- 직사각형
- RoundRectangle
- RoundRectangle
- 타원
- 다이아몬드
- 삼각형
- RightTriangle
- 평행사변형
- 트라페지
- 육각형
- 팔각형

**예**

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
