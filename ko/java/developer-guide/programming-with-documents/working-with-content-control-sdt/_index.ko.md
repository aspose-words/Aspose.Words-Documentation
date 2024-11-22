---
title: 콘텐츠 제어 SDT 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 내용 통제 SDT에 작동
linktitle: 내용 통제 SDT에 작동
type: docs
description: "고급 문서 콘텐츠 관리, 컨텐츠 제어를 생성하고 조작하는 방법 (Structured Document tags) 사용 Java·"
weight: 390
url: /ko/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

내 계정 Microsoft Word, 템플릿을 시작으로 양식을 작성하고 체크 박스, 텍스트 박스, 날짜 선택기 및 드롭다운 목록을 포함하여 콘텐츠 제어를 추가 할 수 있습니다. 내 계정 Aspose.Words· Structured Document Tag or content control from any document loaded as a Aspose.Words StructuredDocumentTag 노드로 가져올 수 있습니다. Structured 문서 태그 (SDT 또는 content control)는 고객 정의 된 semantics뿐만 아니라 문서에 대한 행동과 외관을 구현합니다.

구조화문 태그는 다음 장소에서 문서에서 발생할 수 있습니다:

- Block-level - 단락과 테이블 중, 몸의 아이로서, HeaderFooter, Comment, Footnote 또는 Shape 노드.
- Row-level - 테이블 노드의 아이로서의 행 중.
- 셀 레벨 - 행 노드의 아이로서 테이블 행의 세포 중.
- 인라인 레벨 - 내부의 인라인 내용 중, 퍼프의 아이로서.
- 다른 StructuredDocumentTag 안쪽에 배열하는.

## Content Controls를 문서에 삽입

이 버전의 Aspose.Words, SDT 또는 콘텐츠 컨트롤의 다음 유형은 다음과 같습니다

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

다음 코드 예제는 유형 체크 박스의 콘텐츠 제어를 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

다음 코드 예제는 유형 풍부한 텍스트 상자의 콘텐츠 제어를 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

다음 코드 예제는 유형 combo 상자의 콘텐츠 제어를 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## 콘텐츠 제어를 업데이트하는 방법

이 섹션은 SDT 또는 콘텐츠 제어 프로그램의 값을 업데이트하는 방법을 설명합니다.

다음 코드 예제는 체크 박스의 현재 상태를 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

다음 코드 예제는 유형 일반 텍스트 상자, 드롭다운 목록 및 그림의 내용 제어를 수정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx)·

{{% /alert %}}

## 사용자 정의 XML 부품에 콘텐츠 제어

Word 문서에서 XML 데이터 (*custom XML part*)로 콘텐츠 제어를 바인딩 할 수 있습니다

다음 코드 예제는 사용자 정의 XML 부품에 콘텐츠 컨트롤을 바인딩하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## 콘텐츠 관리의 명확한 내용

콘텐츠 관리의 내용을 정리할 수 있습니다. **StructuredDocumentTag.clear ()** 메소드는 이 구조화 된 문서 태그의 내용을 정리하고 정의된 경우 placeholder를 표시합니다. 그러나, 개정이 있는 경우 콘텐츠 컨트롤의 내용을 명확하게 할 수 없습니다. 콘텐츠 컨트롤이 없는 경우, 5개의 공간은 MS Word와 같이 삽입됩니다 (단, 반복 섹션, 그룹, 체크 박스, 인용 제외). 콘텐츠 제어가 사용자 정의 XML에 매핑되면 참조된 XML 노드가 명확합니다.

다음 코드 예제는 내용 제어의 내용을 명확하게하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## 콘텐츠 제어 배경 및 국경 색상 변경

더 보기 `StructuredDocumentTag.Color` 속성을 사용하면 콘텐츠 컨트롤의 색상을 얻을 수 있습니다. 색깔은 2개의 상황에서 내용 통제에 영향을 줍니다:

1. 명세 MS Word는 콘텐츠 제어를 통해 마우스가 이동할 때 콘텐츠 제어의 배경을 강조합니다. 이 콘텐츠 제어를 식별하는 데 도움이됩니다. 강조의 색상은 비트 "소비자"보다 *Color*· 예를 들어, MS Word는 분홍색 색상으로 배경을 강조합니다. *Color* 레드입니다.
2. 명세 콘텐츠 컨트롤과 상호작용(editing, picking etc), 콘텐츠 컨트롤의 경계는 색상 *Color*·

다음 코드 예제는 내용 제어의 색상을 변경하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Content Control에 입력된 텍스트 형식을 설정하는 방법

콘텐츠 컨트롤의 스타일을 설정하려면 사용할 수 있습니다. `StructuredDocumentTag.Style` 또는 `StructuredDocumentTag.StyleName` 이름 * 출력 문서의 콘텐츠 제어로 텍스트를 입력할 때 입력된 텍스트는 "Quote"스타일을 가질 것입니다.

{{% alert color="primary" %}}

Linked 및 Character 스타일만 콘텐츠 컨트롤에 적용할 수 있습니다. InvalidOperationException ("SDT에이 스타일을 적용 할 수 없습니다")는 스타일이 존재하지만 Linked 또는 Character 스타일이 적용되지 않을 때 던집니다.

{{% /alert %}}

다음 코드 예제는 내용 제어의 스타일을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## 작업 반복 섹션 콘텐츠 제어

반복 영역 내용 제어는 그것 안에 포함된 내용을 반복할 수 있습니다. 사용 방법 Aspose.Words, 반복 섹션의 구조 문서 태그 노드 및 반복 섹션 항목 유형이 생성 될 수 있습니다 그리고 이를 위해, [유형 열한 유형](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) REPEATING_SECTION_ITEM 회원을 제공합니다.

뒤에 오는 부호 예는 테이블에 반복 단면도 내용 통제를 묶는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

