---
title: 콘텐츠 제어 SDT 작업
second_title: .NET용 Aspose.Words
articleTitle: 콘텐츠 제어 SDT 작업
linktitle: 콘텐츠 제어 SDT 작업
description: "고급 문서 콘텐츠 관리, C#를 사용하여 콘텐츠 컨트롤(구조화된 문서 태그)을 만들고 조작하는 방법."
type: docs
weight: 390
url: /ko/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Microsoft Word에서는 템플릿으로 시작하고 확인란, 텍스트 상자, 날짜 선택기 및 드롭다운 목록을 포함한 콘텐츠 컨트롤을 추가하여 양식을 만들 수 있습니다. Aspose.Words에서는 Aspose.Words에 로드된 모든 문서의 구조화된 문서 태그 또는 콘텐츠 컨트롤을 StructuredDocumentTag 노드로 가져옵니다. 구조화된 문서 태그(SDT 또는 콘텐츠 제어)를 사용하면 고객이 정의한 의미뿐만 아니라 해당 동작 및 모양을 문서에 포함할 수 있습니다.

StructuredDocumentTag는 문서의 다음 위치에서 발생할 수 있습니다

- 블록 수준 – 단락과 표 중에서 Body, HeaderFooter, Comment, Footnote 또는 Shape 노드의 하위로
- 행 수준 – 테이블의 행 중에서 테이블 노드의 하위로
- 셀 수준 – 행 노드의 하위로 테이블 행의 셀 중에서
- 인라인 레벨 – 내부의 인라인 콘텐츠 중에서 단락의 하위 항목으로
- 다른 StructuredDocumentTag 내에 중첩됨

## 문서에 콘텐츠 컨트롤 삽입

이 버전의 Aspose.Words에서는 다음 유형의 SDT 또는 콘텐츠 제어를 생성할 수 있습니다

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

다음 코드 예제에서는 확인란 유형의 콘텐츠 컨트롤을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

다음 코드 예제에서는 서식 있는 텍스트 상자 유형의 콘텐츠 컨트롤을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

다음 코드 예제에서는 콤보 상자 유형의 콘텐츠 컨트롤을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## 콘텐츠 컨트롤을 업데이트하는 방법

이 섹션에서는 프로그래밍 방식으로 SDT 또는 콘텐츠 제어 값을 업데이트하는 방법을 설명합니다.

다음 코드 예제에서는 확인란의 현재 상태를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

다음 코드 예제에서는 일반 텍스트 상자, 드롭다운 목록 및 그림 유형의 콘텐츠 컨트롤을 수정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## 사용자 정의 XML 부분에 콘텐츠 제어 바인딩

Word 문서에서 XML 데이터(*사용자 지정 XML 부분*)로 콘텐츠 컨트롤을 바인딩할 수 있습니다.

다음 코드 예제에서는 콘텐츠 제어를 사용자 지정 XML 부분에 바인딩하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## 구조화된 문서 태그 범위의 XML 매핑

**StructuredDocumentTagRangeStart.XmlMapping 속성**를 사용하면 이 구조화된 문서 태그 범위를 현재 문서의 사용자 정의 XML 부분에 있는 XML 데이터에 매핑할 수 있습니다. 그러나 [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) 방법을 사용하면 구조화된 문서 태그 범위를 XML 데이터에 매핑할 수 있습니다.

다음 코드 예제에서는 XML 매핑을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## 콘텐츠 컨트롤의 내용 지우기

자리 표시자를 표시하여 콘텐츠 컨트롤의 내용을 지울 수 있습니다. **StructuredDocumentTag.Clear** 방법은 이 구조화된 문서 태그의 내용을 지우고 정의된 경우 자리 표시자를 표시합니다. 그러나 수정본이 있는 경우 콘텐츠 컨트롤의 내용을 지울 수 없습니다. 콘텐츠 컨트롤에 자리 표시자가 없는 경우 Microsoft Word와 같이 5개의 공백이 삽입됩니다(반복 섹션, 반복 섹션 항목, 그룹, 확인란, 인용 제외). 콘텐츠 컨트롤이 사용자 지정 XML에 매핑되면 참조된 XML 노드가 지워집니다.

다음 코드 예제에서는 콘텐츠 제어의 콘텐츠를 지우는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## 콘텐츠 제어 배경 및 테두리 색상 변경

`StructuredDocumentTag.Color` 속성을 사용하면 콘텐츠 컨트롤의 색상을 가져오거나 설정할 수 있습니다. 색상은 다음 두 가지 상황에서 콘텐츠 제어에 영향을 미칩니다

1. MS Word는 마우스를 콘텐츠 컨트롤 위로 이동할 때 콘텐츠 컨트롤의 배경을 강조 표시합니다. 이는 콘텐츠 컨트롤을 식별하는 데 도움이 됩니다. 강조 표시 색상은 *Color*보다 약간 "부드럽습니다". 예를 들어 MS Word에서는 *Color*가 빨간색일 때 배경을 분홍색으로 강조 표시합니다.
2. 콘텐츠 컨트롤과 상호 작용(편집, 선택 등)하면 콘텐츠 컨트롤의 테두리가 *Color*로 색상이 지정됩니다.

다음 코드 예제에서는 콘텐츠 컨트롤의 색상을 변경하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## 콘텐츠 컨트롤에 입력된 텍스트 서식을 지정하기 위해 스타일을 설정하는 방법

콘텐츠 제어 스타일을 설정하려면 `StructuredDocumentTag.Style` 또는 `StructuredDocumentTag.StyleName` 속성을 사용할 수 있습니다. 출력 문서의 콘텐츠 제어에 텍스트를 입력하면 입력된 텍스트의 스타일은 "인용문"이 됩니다.

{{% alert color="primary" %}}

연결된 스타일과 문자 스타일만 콘텐츠 제어에 적용할 수 있습니다. 존재하지만 연결되지 않은 스타일 또는 문자 스타일이 적용되는 경우 InvalidOperationException("이 스타일을 SDT에 적용할 수 없습니다.")이 발생합니다.

{{% /alert %}}

다음 코드 예제에서는 콘텐츠 제어 스타일을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## 반복 구역 내용 제어 작업

반복 섹션 콘텐츠 제어를 사용하면 해당 섹션에 포함된 콘텐츠를 반복할 수 있습니다. Aspose.Words를 이용하면 반복섹션과 반복섹션 항목 유형의 구조화된 문서 태그 노드를 생성할 수 있으며, 이를 위해 [SdtType 열거 유형](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/)에서는 **RepeatingSectionItem** 속성을 제공합니다.

다음 코드 예제에서는 반복 구역 콘텐츠 컨트롤을 테이블에 바인딩하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
