---
title: C#에서 도형 작업
second_title: .NET용 Aspose.Words
articleTitle: 모양 작업
linktitle: 모양 작업
description: "C#를 사용하여 다양한 유형의 모양을 생성하는 모양 마크업 언어를 소개합니다."
type: docs
weight: 280
url: /ko/net/working-with-shapes/
---

이 항목에서는 Aspose.Words를 사용하여 셰이프를 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다.

Aspose.Words의 모양은 도형, 텍스트 상자, 자유형, OLE 개체, ActiveX 컨트롤 또는 그림과 같은 그리기 레이어의 개체를 나타냅니다. Word 문서에는 하나 이상의 다양한 도형이 포함될 수 있습니다. Aspose.Words의 모양은 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 클래스로 표시됩니다.

## 문서 작성기를 사용하여 도형 삽입

[InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) 방법을 사용하면 지정된 유형과 크기의 인라인 도형과 지정된 위치, 크기 및 텍스트 줄 바꿈 유형의 자유 부동 도형을 문서에 삽입할 수 있습니다. **InsertShape** 방법을 사용하면 문서 모델에 DML 모양을 삽입할 수 있습니다. 문서는 DML 모양을 지원하는 형식으로 저장해야 합니다. 그렇지 않으면 문서 저장 중에 해당 노드가 VML 모양으로 변환됩니다.

다음 코드 예제에서는 이러한 유형의 도형을 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## 가로 세로 비율 설정이 잠겼습니다

Aspose.Words를 사용하면 [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) 속성을 통해 모양의 가로 세로 비율을 잠글지 여부를 지정할 수 있습니다.

다음 코드 예제에서는 **AspectRatioLocked** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## 셀에 모양 레이아웃 설정

[IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) 속성을 사용하여 도형이 테이블 내부에 표시되는지 외부에 표시되는지 지정할 수도 있습니다.

다음 코드 예제에서는 **IsLayoutInCell** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## 모서리 자르기 직사각형 만들기

Aspose.Words를 사용하여 잘린 모서리 직사각형을 만들 수 있습니다. 모양 유형은 *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* 및 *DiagonalCornersRounded.*입니다

DML 모양은 이러한 모양 유형을 사용하여 **InsertShape** 방법을 사용하여 생성됩니다. 이러한 유형은 VML 셰이프를 만드는 데 사용할 수 없습니다. "Shape" 클래스의 공용 생성자를 사용하여 모양을 만들려고 하면 "NotSupportedException" 예외가 발생합니다.

다음 코드 예제에서는 이러한 유형의 도형을 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## 실제 모양 경계 포인트 가져오기

Aspose.Words API를 사용하면 최상위 모양의 앵커를 기준으로 블록을 포함하는 모양의 위치와 크기를 포인트 단위로 얻을 수 있습니다. 이렇게 하려면 [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) 속성을 사용하세요.

다음 코드 예제에서는 **BoundsInPoints** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 수직 앵커 지정

[VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) 속성을 사용하여 모양 내에서 텍스트 수직 정렬을 지정할 수 있습니다.

다음 코드 예제에서는 **VerticalAnchor** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## SmartArt 모양 감지

Aspose.Words를 사용하면 Shape에 `SmartArt` 개체가 있는지 감지할 수도 있습니다. 이렇게 하려면 [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) 속성을 사용하세요.

다음 코드 예제에서는 **HasSmartArt** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## 문서에 수평선 삽입

[InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) 방법을 사용하여 문서에 수평선 모양을 삽입할 수 있습니다.

다음 코드 예제에서는 이를 수행하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API는 수평선 모양의 속성에 액세스할 수 있는 [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) 속성을 제공합니다. [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) 클래스는 수평선 형식화를 위해 Height, Color, NoShade 등과 같은 기본 속성을 노출합니다.

다음 코드 예제에서는 **HorizontalRuleFormat**를 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Math XML이 포함된 도형을 DOM로 도형으로 가져오기

[ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) 속성을 사용하여 EquationXML이 포함된 도형을 Office Math 개체로 변환할 수 있습니다. 이 속성의 기본값은 Microsoft Word 동작에 해당합니다. 즉, 수식 XML이 포함된 셰이프는 Office 수학 개체로 변환되지 않습니다.

다음 코드 예제에서는 도형을 Office Math 개체로 변환하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
