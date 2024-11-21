---
title: 자주 묻는 질문 Group Word 문서로 모양
second_title: Aspose.Words 제품정보 Java
articleTitle: 일하기 Group Word 문서의 모양
linktitle: 일하기 Group Word 문서의 모양
description: "Grouping 및 ungrouping 모양 사용 Java·"
type: docs
weight: 290
url: /ko/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

때로는 추가해야합니다. group shape Word 문서로. 한국어 group shape 다수 모양으로 이루어져 있습니다

내 계정 Microsoft Word, 신속하게 추가할 수 있습니다. group shape 사용 방법 Group 명령/버튼. 그룹의 개별 모양은 별도로 이동할 수 있습니다.

내 계정 Aspose.Words 그것은 매우 쉽게 추가 group shape 이름 * [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 수업. **Shape** 자주 묻는 질문 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 클래스와 그에 추가 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 사용 방법 [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) 방법.

다음은 몇 가지입니다. `Shape` 지원되는 유형 Aspose.Words· 자주 묻는 질문 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)::

- 직사각형
- 라운드 리본
- 라운드 리본
- 엘립스
- 다이아몬드
- 삼각형
- 직각
- 평행선
- 사다리꼴
- 육각형
- 팔각형

**Example**

* 추가 group shape Word 문서로. * 이름


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
