---
title: 모양과 일 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 모양과 일
linktitle: 모양과 일
type: docs
description: "Markup 언어에 대한 소개, 다른 유형의 모양 만들기 Java·"
weight: 280
url: /ko/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

이 항목에 대해 논의하는 방법 programmatically 와 모양 사용 Aspose.Words·

모양에 Aspose.Words AutoShape, textbox, freeform, OLE 객체, ActiveX 컨트롤 또는 그림과 같은 도면 레이어의 객체를 나타냅니다. Word 문서는 하나 이상의 다른 모양을 포함 할 수 있습니다. 문서의 모양은 다음과 같습니다. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 수업.

## Document Builder를 사용하여 삽입 모양

지정된 유형과 크기 및 무료 플로팅 형태로 인라인 모양을 삽입할 수 있습니다. 지정된 위치, 크기 및 텍스트 랩 유형은 문서를 사용하여 문서에 삽입 할 수 있습니다. [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) 방법. 더 보기 **InsertShape** 방법은 문서 모델에 DML 모양을 삽입 할 수 있습니다. 문서는 DML 모양을 지원하는 형식으로 저장되어야 합니다. 그렇지 않으면, 이러한 노드는 VML 모양으로 변환됩니다. 문서 저장.

다음 코드 예제는 문서에 이러한 유형의 모양을 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## 잠그는 Aspect 비율

사용 방법 Aspose.Words, 모양의 종횡비가 잠겨 있는지 지정할 수 있습니다. [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) 호텔 위치

다음 코드 예제는 작업하는 방법을 보여줍니다. **AspectRatioLocked** 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## 셀에 있는 모양 배치

모양이 테이블 내부 또는 외부에 표시되어 있는지 지정할 수 있습니다. [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) 호텔 위치

다음 코드 예제는 작업하는 방법을 보여줍니다. **IsLayoutInCell** 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## 추가 코너 Snipped

snip 코너 직사각형을 만들 수 있습니다. Aspose.Words· 모양 유형은 *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, * 및 *DiagonalCornersRounded.*

DML 모양은 사용 **InsertShape** 이 모양 유형의 방법. 이 유형은 VML 모양을 만들 수 없습니다. "Shape" 클래스의 공개 생성기를 사용하여 모양을 만들려면 "NotSupportedException" 예외를 제기합니다.

다음 코드 예제는 문서에 이러한 유형의 모양을 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## 실제 모양 경계 포인트 받기

사용 방법 Aspose.Words API, 당신은 점에 있는 구획을 포함하는 모양의 위치 그리고 크기를 얻을 수 있습니다, 최고 모양의 닻에 관계되는. 이렇게하려면 [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) 호텔 위치

다음 코드 예제는 작업하는 방법을 보여줍니다. **BoundsInPoints** 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 수직 앵커

텍스트 수직 정렬을 지정할 수 있습니다. [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) 호텔 위치

다음 코드 예제는 작업하는 방법을 보여줍니다. **VerticalAnchor** 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## 스마트 감지 예술 모양

Aspose.Words 또한 모양이 있는 경우에 검출할 수 있습니다 `SmartArt` 이름 * 이렇게하려면 [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) 호텔 위치

다음 코드 예제는 작업하는 방법을 보여줍니다. **HasSmartArt** 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## 수평 규칙 체재

수평한 규칙 모양을 문서로 삽입할 수 있습니다 [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) 방법.

Aspose.Words API 제품정보 [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) 수평 규칙 모양의 속성에 액세스 할 수있는 속성. 더 보기 [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) 클래스는 고도, 색상, NoShade 등과 같은 기본 속성을 수평 규칙의 포맷합니다.

다음 코드 예제는 설정 방법을 보여줍니다 **HorizontalRuleFormat**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
