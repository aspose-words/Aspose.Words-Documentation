---
title: Java에서 도형 작업
second_title: Aspose.WordsJava
articleTitle: 도형 작업
linktitle: 도형 작업
type: docs
description: "Java을 사용하여 다른 유형의 모양을 만드는 모양 마크 업 언어에 대한 소개."
weight: 280
url: /ko/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

이 항목에서는Aspose.Words을 사용하여 도형을 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다.

Aspose.Words의 모양은AutoShape,텍스트 상자,자유형,OLE개체,액티브 컨트롤 또는 그림과 같이 도면 레이어의 개체를 나타냅니다. 단어 문서에는 하나 이상의 다른 모양이 포함될 수 있습니다. 문서의 모양은[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)클래스로 표시됩니다.

## 문서 빌더를 사용하여 도형 삽입

[InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double)방법을 사용하여 지정된 유형 및 크기의 인라인 모양과 지정된 위치,크기 및 텍스트 줄 바꿈 유형의 자유 부동 모양을 문서에 삽입 할 수 있습니다. **InsertShape**메서드를 사용하면DML도형을 문서 모델에 삽입할 수 있습니다. 문서는DML모양을 지원하는 형식으로 저장되어야 하며,그렇지 않으면 문서 저장 중에 이러한 노드가VML모양으로 변환됩니다.

다음 코드 예제에서는 이러한 형식의 도형을 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## 화면 비율 고정 설정

Aspose.Words을 사용하여[AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked)속성을 통해 셰이프의 종횡비가 잠겨 있는지 여부를 지정할 수 있습니다.

다음 코드 예제에서는**AspectRatioLocked**속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## 셀에 모양 레이아웃 설정

[IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell)속성을 사용하여 도형이 테이블 내부 또는 테이블 외부에 표시되는지 여부를 지정할 수도 있습니다.

다음 코드 예제에서는**IsLayoutInCell**속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## 잘린 모서리 추가

Aspose.Words를 사용하여 캡처 모서리 사각형을 만들 수 있습니다. 도형 유형은*SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*및*DiagonalCornersRounded.*입니다

DML모양은 이러한 모양 유형을 사용하여**InsertShape**방법을 사용하여 만들어집니다. 이러한 유형은VML모양을 만드는 데 사용할 수 없습니다. "모양"클래스의 공용 생성자를 사용하여 모양을 만들려고 하면"NotSupportedException"예외가 발생합니다.

다음 코드 예제에서는 이러한 형식의 도형을 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## 실제 모양 경계 점 얻기

Aspose.WordsAPI를 사용하여 최상위 도형의 앵커를 기준으로 블록을 포함하는 도형의 위치 및 크기를 점으로 얻을 수 있습니다. 이렇게 하려면[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints)속성을 사용합니다.

다음 코드 예제에서는**BoundsInPoints**속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 수직 앵커 지정

[VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor)속성을 사용하여 도형 내에서 텍스트 세로 맞춤을 지정할 수 있습니다.

다음 코드 예제에서는**VerticalAnchor**속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## SmartArt모양 감지

Aspose.Words는 또한 모양에`SmartArt`개체가 있는지 감지할 수 있습니다. 이렇게 하려면[HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt)속성을 사용합니다.

다음 코드 예제에서는**HasSmartArt**속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## 수평 규칙 형식

[InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule)방법을 사용하여 가로 규칙 모양을 문서에 삽입할 수 있습니다.

Aspose.WordsAPI는 수평 규칙 모양의 속성에 액세스하기 위해[HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat)속성을 제공합니다. [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/)클래스는 높이,색상,NoShade등과 같은 기본 속성을 노출합니다. 수평 규칙의 서식을 지정합니다.

다음 코드 예제에서는**HorizontalRuleFormat**을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
