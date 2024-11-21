---
title: 모양 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 도형 작업
linktitle: 도형 작업
type: docs
description: "모양 마크업 언어 소개,다음을 사용하여 다양한 유형의 모양 만들기 C++."
weight: 280
url: /ko/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

이 항목에서는 다음을 사용하여 도형을 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다 Aspose.Words.

의 모양 Aspose.Words 도면 레이어에서 다음과 같은 개체를 나타냅니다 AutoShape,텍스트 상자,자유형, OLE 개체,액티브 컨트롤 또는 그림. 단어 문서에는 하나 이상의 다른 모양이 포함될 수 있습니다. 문서의 모양은 [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 수업

## 문서 빌더를 사용하여 도형 삽입

지정된 유형 및 크기의 인라인 모양과 지정된 위치,크기 및 텍스트 줄 바꿈 유형의 자유 부동 모양을 사용하여 문서에 삽입 할 수 있습니다. [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/) 방법 그 **InsertShape** 방법은 삽입을 허용합니다 DML 문서 모델에 모양을 만듭니다. 문서를 지원하는 형식으로 저장해야 합니다 DML 그렇지 않으면 이러한 노드는 다음과 같이 변환됩니다 VML 모양,문서를 저장하는 동안.

다음 코드 예제에서는 이러한 형식의 도형을 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## 화면 비율 고정 설정

사용 Aspose.Words,당신은 모양의 종횡비를 통해 잠겨 있는지 여부를 지정할 수 있습니다 [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/) 재산.

다음 코드 예제에서는 다음과 같이 작업하는 방법을 보여 줍니다 **AspectRatioLocked** 재산:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## 셀에 모양 레이아웃 설정

도형을 사용하여 테이블 내부 또는 테이블 외부에 표시할지 여부를 지정할 수도 있습니다 [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) 재산.

다음 코드 예제에서는 다음과 같이 작업하는 방법을 보여 줍니다 **IsLayoutInCell** 재산:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## 캡처 코너 사각형 만들기

다음을 사용하여 캡처 모서리 사각형을 만들 수 있습니다 Aspose.Words. 모양 유형은 *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* 그리고 *DiagonalCornersRounded.*

그 DML 모양은 다음을 사용하여 만들어집니다 **InsertShape** 이 모양 유형을 가진 방법. 이러한 형식을 사용하여 다음을 만들 수 없습니다 VML 모양. "모양"클래스의 공용 생성자를 사용하여 모양을 만들려는 시도는"NotSupportedException"예외.

다음 코드 예제에서는 이러한 형식의 도형을 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## 실제 모양 경계 점 얻기

사용 Aspose.Words API,최상위 모양의 앵커를 기준으로 블록을 포함하는 모양의 위치와 크기를 점으로 얻을 수 있습니다. 이 작업을 수행하려면 다음을 사용하십시오 [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/) 재산.

다음 코드 예제에서는 다음과 같이 작업하는 방법을 보여 줍니다 **BoundsInPoints** 재산:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## 수평 규칙 형식

Aspose.Words API 제공 [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) 가로 규칙 모양의 속성에 액세스하는 속성입니다. 그 **HorizontalRuleFormat** 클래스는 높이,색상,음영 등과 같은 기본 속성을 노출합니다. 수평 규칙의 서식을 지정합니다.

다음 코드 예제에서는 설정하는 방법을 보여 줍니다 **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## 삽입 OLE 아이콘으로 개체

Aspose.Words API 제공 **Shape** → **InsertOleObjectAsIcon** 임베디드 또는 링크 된 기능을 삽입하는 기능 OLE 문서에 아이콘으로 개체. 이 기능을 사용하면 아이콘 파일과 캡션을 지정할 수 있습니다. 그 `OLE` 개체 유형은 파일 확장자를 사용하여 감지해야합니다.

다음 코드 예제에서는 삽입을 설정하는 방법을 보여 줍니다 OLE 문서에 아이콘으로 개체:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

아이콘의 최대 크기는 올바른 표시를 위해 32*32 이어야합니다.

{{% /alert %}}
