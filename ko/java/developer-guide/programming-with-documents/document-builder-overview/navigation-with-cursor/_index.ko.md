---
title: Java에 커서가 있는 탐색
second_title: Aspose.WordsJava
articleTitle: 커서 탐색
linktitle: 커서 탐색
description: "Java을 사용하여 단락,책갈피 또는 특정 문자와 같은 문서 내의 다른 노드 사이를 이동합니다."
type: docs
weight: 5
url: /ko/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

문서를 사용하는 동안 짧거나 긴 문서일지라도 문서를 탐색해야 합니다. 가상 커서를 사용한 탐색은 문서의 다른 노드 사이를 탐색하는 기능을 나타냅니다.

짧은 문서에서는 키보드의 화살표 키를 사용하거나 마우스를 클릭하여 원하는 위치에 삽입점을 찾아도 삽입점을 이동할 수 있으므로 문서 내에서 이동하는 것이 간단합니다. 그러나 일단 많은 페이지가 있는 큰 문서가 있으면 이러한 기본 기술이 부족할 것입니다.

이 문서에서는 문서에서 이동하고 가상 커서를 사용하여 문서의 다른 부분으로 이동하는 방법을 설명합니다.

## 현재 커서 위치 감지

문서를 탐색하는 프로세스를 시작하기 전에 현재 선택된 노드를 가져와야 합니다. [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode)속성을 사용하여 선택한 노드에서 커서의 정확한 위치를 얻을 수 있습니다. 또한 현재 노드를 가져오는 대신[CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph)및[CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection)속성을 사용하여 현재 선택한 단락 또는 현재 선택한 섹션을 가져올 수 있습니다.

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)을 사용하여 수행하는 삽입 작업은[CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode)앞에 삽입됩니다. 현재 단락이 비어 있거나 단락 끝 바로 앞에 커서가 있으면**CurrentNode**는 널을 반환합니다.

## 문서에서 메서드 탐색

텍스트를 편집할 때 문서를 탐색하는 방법과 문서를 정확히 어디로 이동해야 하는지 아는 것이 중요합니다. Aspose.Words을 사용하면 문서에서 이동하고 다른 섹션과 파트로 이동할 수 있습니다.이 기능은 스크롤하지 않고 단어 문서의 페이지 또는 제목으로 이동하는Microsoft Word의 탐색 창의 기능과 유사합니다.

주요 방법은 문서의 특정 노드로 커서 위치를 이동할 수 있는 것입니다.[MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node)방법을 사용하여 이 작업을 수행할 수 있습니다.

다음 코드 예제에서는**DocumentBuilder**을 문서의 다른 노드로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

그러나 기본**MoveTo**방법 외에도 더 구체적인 방법이 있습니다.

### 문서의 시작 또는 끝으로 이동

[MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)및[MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)방법을 사용하여 문서의 시작 또는 끝으로 이동할 수 있습니다.

다음 코드 예제에서는 커서 위치를 문서의 시작 또는 끝으로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### 북마크로 이동

당신은 당신이 찾아 쉽게 다시 이동하려는 장소를 표시 할 수 있습니다. 원하는 만큼 많은 책갈피를 문서에 삽입한 다음 고유한 이름을 가진 책갈피를 식별하여 탐색할 수 있습니다. [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean)방법을 사용하여 책갈피로 이동할 수 있습니다.

다음 코드 예제에서는 커서 위치를 책갈피로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### 표 셀로 이동

[MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int)메서드를 사용하여 테이블 셀로 이동할 수 있습니다. 이 방법을 사용하면 커서를 특정 테이블의 모든 셀로 이동할 수 있습니다. 또한 인덱스를 지정하여 커서를**MoveToCell**메서드 내의 셀의 임의의 위치 또는 지정된 문자로 이동할 수 있습니다.

다음 코드 예제에서는 커서 위치를 지정된 테이블 셀로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### 필드로 이동

[MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)방법을 사용하여 문서의 특정 필드로 이동할 수 있습니다. 또한[MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String)메서드를 사용하여 특정 병합 필드로 이동할 수 있습니다.

다음 코드 예제에서는 문서 작성기 커서를 특정 필드로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### 머리글 또는 바닥글로 이동

[MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)메서드를 사용하여 머리글 또는 바닥글의 시작 부분으로 이동할 수 있습니다.

다음 코드 예제에서는 문서 작성기 커서를 문서 머리글 또는 바닥글로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 섹션 또는 단락으로 이동

[MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int)또는[MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)방법을 사용하여 특정 섹션이나 단락으로 이동할 수 있습니다. 또한 인덱스를 지정하여**MoveToParagraph**메서드 내의 단락에서 임의의 위치 또는 지정된 문자로 커서를 이동할 수 있습니다.

다음 코드 예제에서는 문서의 특정 섹션 및 특정 단락으로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
