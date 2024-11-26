---
title: Java에서 콘텐츠 제어SDT작업
second_title: Aspose.WordsJava
articleTitle: 콘텐츠 제어 작업SDT
linktitle: 콘텐츠 제어 작업SDT
type: docs
description: "고급 문서 콘텐츠 관리,Java을 사용하여 콘텐츠 컨트롤(구조화된 문서 태그)을 만들고 조작하는 방법."
weight: 390
url: /ko/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Microsoft Word에서 템플릿으로 시작하여checkbox,텍스트 상자,날짜 선택기 및 드롭다운 목록을 포함한 콘텐츠 컨트롤을 추가하여 양식을 만들 수 있습니다. Aspose.Words에서는Aspose.Words로 로드된 문서의 구조화된 문서 태그 또는 콘텐츠 컨트롤을StructuredDocumentTag노드로 가져옵니다. 구조화된 문서 태그(SDT또는 콘텐츠 제어)는 고객 정의 의미 체계와 그 동작 및 모양을 문서에 포함시킬 수 있습니다.

StructuredDocumentTag은 다음 위치에서 문서에서 발생할 수 있습니다:

- 블록 수준-단락과 표 중에서 본문,HeaderFooter,주석,각주 또는 모양 노드의 자식으로.
- 행 수준-테이블의 행 중 테이블 노드의 자식으로.
- 셀 수준-테이블 행의 셀 중 행 노드의 자식으로.
- 인라인 수준-내부 인라인 콘텐츠 중 단락의 자식으로.
- 다른StructuredDocumentTag안에 중첩됩니다.

## 문서에 콘텐츠 컨트롤 삽입

이 버전의Aspose.Words에서는 다음 유형의SDT또는 콘텐츠 컨트롤을 만들 수 있습니다:

- Checkbox
- DropDownList
- ComboBox
- 날짜
- BuildingBlockGallery
- 그룹
- `Picture`
- RichText
- PlainText

다음 코드 예제에서는checkbox형식의 콘텐츠 컨트롤을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

다음 코드 예제에서는 서식 있는 텍스트 상자 형식의 콘텐츠 컨트롤을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

다음 코드 예제에서는 콤보 상자 형식의 콘텐츠 컨트롤을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## 콘텐츠 컨트롤을 업데이트하는 방법

이 섹션에서는SDT또는 콘텐츠 컨트롤의 값을 프로그래밍 방식으로 업데이트하는 방법을 설명합니다.

다음 코드 예제에서는checkbox의 현재 상태를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

다음 코드 예제에서는 일반 텍스트 상자,드롭다운 목록 및 그림 형식의 콘텐츠 컨트롤을 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## 사용자 정의XML파트에 콘텐츠 컨트롤 바인딩

워드 문서에서XML데이터(*custom XML part*)로 콘텐츠 컨트롤을 바인딩할 수 있습니다.

다음 코드 예제에서는 콘텐츠 컨트롤을 사용자 지정XML파트에 바인딩하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## 콘텐츠 컨트롤의 콘텐츠 지우기

자리 표시자를 표시하여 콘텐츠 컨트롤의 내용을 지울 수 있습니다. **StructuredDocumentTag.clear()**메서드는 이 구조화된 문서 태그의 내용을 지우고 정의된 경우 자리 표시자를 표시합니다. 그러나 수정 내용이 있는 경우 콘텐츠 컨트롤의 내용을 지울 수 없습니다. 콘텐츠 컨트롤에 자리 표시자가 없는 경우MS단어와 같이 5 개의 공백이 삽입됩니다(섹션 반복,섹션 항목 반복,그룹,확인란,인용 제외). 콘텐츠 컨트롤이 사용자 지정XML에 매핑되면 참조된XML노드가 지워집니다.

다음 코드 예제에서는 콘텐츠 컨트롤의 콘텐츠를 지우는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## 콘텐츠 제어 배경 및 테두리 색상 변경

`StructuredDocumentTag.Color`속성을 사용하면 콘텐츠 컨트롤의 색상을 가져오거나 설정할 수 있습니다. 색상은 두 가지 상황에서 콘텐츠 제어에 영향을 줍니다:

1. MS단어는 마우스가 콘텐츠 컨트롤 위로 이동할 때 콘텐츠 컨트롤의 배경을 강조 표시합니다. 이 콘텐츠 컨트롤을 식별하는 데 도움이됩니다. 강조 표시의 색상은*Color*보다 약간"부드럽습니다". 예를 들어*Color*이 빨간색 일 때MS단어는 배경을 분홍색으로 강조 표시합니다.
2. 콘텐츠 컨트롤과 상호 작용(편집,선택 등)할 때 콘텐츠 컨트롤의 테두리는*Color*으로 채색됩니다.

다음 코드 예제에서는 콘텐츠 컨트롤의 색상을 변경하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## 콘텐츠 컨트롤에 입력된 텍스트의 서식을 지정하는 스타일을 설정하는 방법

콘텐츠 컨트롤의 스타일을 설정하려면`StructuredDocumentTag.Style`또는`StructuredDocumentTag.StyleName`속성을 사용할 수 있습니다. 출력 문서의 콘텐츠 컨트롤에 텍스트를 입력하면 입력된 텍스트의 스타일이"견적"이 됩니다.

{{% alert color="primary" %}}

링크 및 문자 스타일만 콘텐츠 컨트롤에 적용할 수 있습니다. InvalidOperationException("이 스타일을SDT에 적용할 수 없습니다")는 존재하지만 연결되지 않은 스타일이나 문자 스타일을 적용할 때 발생합니다.

{{% /alert %}}

다음 코드 예제에서는 콘텐츠 컨트롤의 스타일을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## 반복 섹션 콘텐츠 제어 작업

반복 섹션 콘텐츠 컨트롤은 그 안에 포함 된 콘텐츠를 반복 할 수 있습니다. Aspose.Words를 사용하여 반복 섹션 및 반복 섹션 항목 유형의 구조화된 문서 태그 노드를 만들 수 있으며 이를 위해[SdtType열거형 유형](https://reference.aspose.com/words/java/com.aspose.words/sdttype/)은REPEATING_SECTION_ITEM멤버를 제공합니다.

다음 코드 예제에서는 반복 섹션 콘텐츠 컨트롤을 테이블에 바인딩하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

