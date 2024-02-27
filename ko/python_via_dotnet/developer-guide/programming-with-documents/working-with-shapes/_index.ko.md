---
title: Python에서 도형 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 모양 작업
linktitle: 모양 작업
description: "Python를 사용하여 문서에서 도형, 개체를 만들고 관리합니다."
type: docs
weight: 280
url: /ko/python-net/working-with-shapes/
---

이 항목에서는 Aspose.Words를 사용하여 셰이프를 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다.

Aspose.Words의 모양은 도형, 텍스트 상자, 자유형, OLE 개체, ActiveX 컨트롤 또는 그림과 같은 그리기 레이어의 개체를 나타냅니다. Word 문서에는 하나 이상의 다양한 도형이 포함될 수 있습니다. 문서의 모양은 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 클래스로 표현됩니다.

## 문서 작성기를 사용하여 도형 삽입

[insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) 방법을 사용하여 지정된 유형 및 크기의 인라인 도형과 지정된 위치, 크기 및 텍스트 줄 바꿈 유형의 자유 부동 도형을 문서에 삽입할 수 있습니다. [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) 방법을 사용하면 DML 모양을 문서 모델에 삽입할 수 있습니다. 문서는 DML 모양을 지원하는 형식으로 저장해야 합니다. 그렇지 않으면 문서 저장 중에 해당 노드가 VML 모양으로 변환됩니다.

다음 코드 예제에서는 이러한 유형의 도형을 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## 가로 세로 비율 설정이 잠겼습니다

Aspose.Words를 사용하면 [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) 속성을 통해 모양의 가로 세로 비율을 잠글지 여부를 지정할 수 있습니다.

다음 코드 예제에서는 **AspectRatioLocked** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## 셀에 모양 레이아웃 설정

[is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) 속성을 사용하여 도형을 테이블 내부에 표시할지 외부에 표시할지 지정할 수도 있습니다.

다음 코드 예제에서는 **IsLayoutInCell** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## 모서리 자르기 직사각형 만들기

Aspose.Words를 사용하여 잘린 모서리 직사각형을 만들 수 있습니다. 모양 유형은 [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) 및 [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded)입니다.

DML 모양은 이러한 모양 유형을 사용하여 [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) 방법을 사용하여 생성됩니다. 이러한 유형은 VML 셰이프를 만드는 데 사용할 수 없습니다. [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 클래스의 공용 생성자를 사용하여 모양을 만들려고 하면 "NotSupportedException" 예외가 발생합니다.

다음 코드 예제에서는 이러한 유형의 도형을 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## 실제 모양 경계 포인트 가져오기

Aspose.Words API를 사용하면 최상위 모양의 앵커를 기준으로 블록을 포함하는 모양의 위치와 크기를 포인트 단위로 얻을 수 있습니다. 이렇게 하려면 [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) 속성을 사용하세요.

다음 코드 예제에서는 **BoundsInPoints** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## 수직 앵커 지정

[vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) 속성을 사용하여 모양 내에서 텍스트 수직 정렬을 지정할 수 있습니다.

다음 코드 예제에서는 **VerticalAnchor** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## SmartArt 모양 감지

Aspose.Words를 사용하면 Shape에 `SmartArt` 개체가 있는지 감지할 수도 있습니다. 이렇게 하려면 [has_smart_art 속성](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) 속성을 사용하세요.

다음 코드 예제에서는 **HasSmartArt** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## 문서에 수평선 삽입

[insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) 방법을 사용하여 문서에 수평선 모양을 삽입할 수 있습니다.

다음 코드 예제에서는 이를 수행하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API는 수평선 모양의 속성에 액세스할 수 있는 [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) 속성을 제공합니다. [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) 클래스는 수평선 형식화를 위해 [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) 등과 같은 기본 속성을 노출합니다.

다음 코드 예제에서는 [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/)를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## OLE 개체를 아이콘으로 삽입

Aspose.Words API는 포함되거나 연결된 OLE 개체를 아이콘으로 문서에 삽입하는 **Shape.insert_ole_object_as_icon** 기능을 제공합니다. 이 기능을 사용하면 아이콘 파일과 캡션을 지정할 수 있습니다. `OLE` 객체 유형은 파일 확장자를 사용하여 감지됩니다.

다음 코드 예제에서는 OLE 개체를 아이콘으로 문서에 삽입하도록 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

올바른 표시를 위해서는 아이콘의 최대 크기가 32x32여야 합니다.

{{% /alert %}}

## Math XML이 포함된 도형을 DOM로 도형으로 가져오기

[convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) 속성을 사용하여 EquationXML이 포함된 도형을 Office Math 개체로 변환할 수 있습니다. 이 속성의 기본값은 MS Word 동작에 해당합니다. 즉, 수식 XML이 포함된 셰이프는 Office 수학 개체로 변환되지 않습니다.

다음 코드 예제에서는 도형을 Office Math 개체로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
