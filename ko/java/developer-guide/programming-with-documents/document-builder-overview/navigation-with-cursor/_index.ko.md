---
title: Cursor의 탐색 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Cursor를 가진 항법
linktitle: Cursor를 가진 항법
description: "문서 내에서 다른 노드 사이의 이동, 책갈피, 또는 특정 문자 사용 Java·"
type: docs
weight: 5
url: /ko/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

문서와 작업하는 동안, 짧은 또는 긴 경우, 당신은 당신의 문서를 탐색해야합니다. 가상 커서와 탐색은 문서의 다른 노드들 사이에서 탐색할 수 있는 기능을 나타냅니다.

키보드의 화살표 키를 사용하여 삽입 포인트를 이동하거나 원하는 삽입 지점을 찾을 마우스를 클릭하여 짧은 문서 내에서, 문서에서 이동하는 것은 간단합니다. 그러나 많은 페이지를 가지고 큰 문서가 있다면,이 기본 기술은 충분합니다.

이 문서는 문서에서 이동하고 다른 부분에 가상 커서로 탐색하는 방법을 설명합니다.

## 현재 Cursor 위치 검출

문서를 통해 항해 프로세스를 시작하기 전에 선택한 노드를 얻을 필요가 있습니다. 선택된 노드에서 커서의 정확한 위치를 얻을 수 있습니다. [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) 호텔 위치 현재 노드를 얻는 대신 현재 선택된 단락 또는 현재 선택된 섹션을 사용할 수 있습니다. [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) · [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) 이름 *

어떤 삽입 작업을 수행 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 앞에 삽입될 것입니다 [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode)· 현재 단락이 비어 있거나 커서가 단락의 끝 앞에 위치 할 때, **CurrentNode** 반환 null.

## 문서의 탐색 방법

텍스트를 편집 할 때, 그것은 당신의 문서를 탐색하고 정확히 그것을 이동하는 방법을 알고 중요합니다. Aspose.Words 문서에서 이동하고 다른 섹션과 부품을 탐색 할 수 있습니다. 이것은 Navigation Pane의 기능과 유사합니다. Microsoft Word 페이지를 이동하거나 스크롤하지 않고 Word 문서에 헤드.

주요 방법은 문서의 특정 노드에 커서 위치를 이동할 수 있을 것입니다. 이를 사용하여 달성할 수 있습니다. [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) 방법.

다음 코드 예제는 이동 방법을 보여줍니다 **DocumentBuilder** 문서의 다른 노드에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

그러나 기본적으로 **MoveTo** 방법, 더 구체적인 것.

### 문서의 시작 또는 종료

문서의 시작 또는 끝으로 갈 수 있습니다. [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) · [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) 방법.

다음 코드 예제는 문서의 시작 또는 끝으로 커서 위치를 이동하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### 책갈피

쉽게 찾아 이동 할 수있는 장소를 표시 할 수 있습니다. 당신은 원하는대로 문서에 많은 책갈피를 삽입 할 수 있습니다, 그리고 그 다음 독특한 이름과 책갈피를 식별하여 그들을 탐색. 북마크로 이동할 수 있습니다. [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) 방법.

다음 코드 예제는 책갈피에 커서 위치를 이동하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### 테이블 셀에 Navigate

테이블 셀로 이동할 수 있습니다. [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) 방법. 이 방법은 특정 테이블에 어떤 세포로 커서를 탐색 할 수 있습니다. 또한, 셀 내의 모든 위치 또는 지정된 문자로 커서를 이동하기 위해 인덱스를 지정할 수 있습니다. **MoveToCell** 방법.

다음 코드 예제는 지정된 테이블 셀에 커서 위치를 이동하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### 본문 바로가기

문서의 특정 필드로 이동할 수 있습니다. [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) 방법. 또한, 특정 병합 필드로 이동할 수 있습니다. [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) 방법.

다음 코드 예제는 문서 빌더 커서를 특정 필드로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### 헤더 또는 Footer에 Navigate

헤더나 발러의 시작으로 이동합니다. [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) 방법

다음 코드 예제는 문서 헤더 또는 footer에 문서 빌더 커서를 이동하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 섹션 또는 퍼프로 이동

특정 섹션 또는 단락으로 이동할 수 있습니다. [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) 또는 [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) 방법. 또한, cursor를 어떤 위치나 단락의 지정된 문자로 이동할 인덱스를 지정할 수 있습니다. **MoveToParagraph** 방법.

다음 코드 예제는 특정 섹션과 문서의 특정 단락으로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
