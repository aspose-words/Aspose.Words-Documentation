---
title: 콘텐츠 제어 작업 SDT
second_title: Aspose.Words 에 대한 C++
articleTitle: 콘텐츠 제어 작업 SDT
linktitle: 콘텐츠 제어 작업 SDT
type: docs
description: "고급 문서 콘텐츠 관리,다음을 사용하여 콘텐츠 컨트롤(구조화된 문서 태그)을 만들고 조작하는 방법 C++."
weight: 390
url: /ko/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

그 안에 Microsoft Word,템플릿으로 시작하여 확인란,텍스트 상자,날짜 선택기 및 드롭다운 목록을 포함한 콘텐츠 컨트롤을 추가하여 양식을 만들 수 있습니다. 그 안에 Aspose.Words,구조화된 문서 태그 또는 로드된 모든 문서의 콘텐츠 제어 Aspose.Words 수입되는 StructuredDocumentTag 노드 구조화된 문서 태그(SDT 또는 콘텐츠 제어)를 통해 고객 정의 된 의미 체계와 그 동작 및 모양을 문서에 포함 할 수 있습니다. StructuredDocumentTag 다음 위치에서 문서에서 발생할 수 있습니다:

- 블록 수준-단락과 표 중에서 신체의 자식으로, HeaderFooter,주석,각주 또는 모양 노드
- 행 수준-테이블 노드의 자식으로 테이블의 행 중
- 셀 수준-테이블 행의 셀 중 행 노드의 자식으로
- 인라인 수준-단락의 자식으로 내부 인라인 콘텐츠 중
- 다른 내부에 중첩 StructuredDocumentTag

## 콘텐츠 컨트롤에 입력된 텍스트의 서식을 지정하는 스타일을 설정하는 방법

콘텐츠 컨트롤의 스타일을 설정하려면 다음을 사용할 수 있습니다 `StructuredDocumentTag.Style` 또는 `StructuredDocumentTag.StyleName` 속성. 출력 문서의 콘텐츠 컨트롤에 텍스트를 입력하면 입력된 텍스트에는"견적"스타일이 표시됩니다.

{{% alert color="primary" %}}

링크 및 문자 스타일만 콘텐츠 컨트롤에 적용할 수 있습니다. 한 InvalidOperationException ("이 스타일을 적용 할 수 없습니다 SDT")는 존재하지만 연결되지 않은 스타일이나 캐릭터 스타일을 적용할 때 던집니다.

{{% /alert %}}

다음 코드 예제에서는 콘텐츠 컨트롤의 스타일을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## 반복 섹션 콘텐츠 제어 작업

반복 섹션 콘텐츠 컨트롤은 그 안에 포함 된 콘텐츠를 반복 할 수 있습니다. 사용 Aspose.Words,반복 섹션 및 반복 섹션 항목 유형의 구조화된 문서 태그 노드를 만들 수 있으며 이를 위해, SdtType 열거형 유형은 다음을 제공합니다 **RepeatingSectionItem** 재산.

다음 코드 예제에서는 반복 섹션 콘텐츠 컨트롤을 테이블에 바인딩하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
