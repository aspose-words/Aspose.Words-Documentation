---
title: 커서가 있는 탐색 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 커서 탐색
linktitle: 커서 탐색
description: "다음을 사용하여 단락,책갈피 또는 특정 문자와 같은 문서 내의 다른 노드 사이를 탐색합니다 C++."
type: docs
weight: 10
url: /ko/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

문서를 사용하는 동안 짧거나 긴 문서일지라도 문서를 탐색해야 합니다. 가상 커서를 사용한 탐색은 문서의 다른 노드 사이를 탐색하는 기능을 나타냅니다.

짧은 문서에서는 키보드의 화살표 키를 사용하거나 마우스를 클릭하여 원하는 위치에 삽입점을 찾아도 삽입점을 이동할 수 있으므로 문서 내에서 이동하는 것이 간단합니다. 그러나 일단 많은 페이지가 있는 큰 문서가 있으면 이러한 기본 기술이 부족할 것입니다.

이 문서에서는 문서에서 이동하고 가상 커서를 사용하여 문서의 다른 부분으로 이동하는 방법을 설명합니다.

## 현재 커서 위치 감지

문서를 탐색하는 프로세스를 시작하기 전에 현재 선택된 노드를 가져와야 합니다. 당신은 사용하여 선택한 노드에서 커서의 정확한 위치를 얻을 수 있습니다 [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/) 재산. 또한 현재 노드를 얻는 대신 현재 선택한 단락 또는 현재 선택한 섹션을 사용하여 가져올 수 있습니다 [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) 그리고 [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/) 속성.

다음을 사용하여 수행하는 모든 삽입 작업 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 전에 삽입 될 것입니다 [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). 현재 단락이 비어 있거나 커서가 단락 끝 바로 앞에 위치하면 **CurrentNode** 반환합니다.

## 문서에서 메서드 탐색

텍스트를 편집할 때 문서를 탐색하는 방법과 문서를 정확히 어디로 이동해야 하는지 아는 것이 중요합니다. Aspose.Words 문서에서 이동하고 다른 섹션과 파트로 이동할 수 있습니다. Microsoft Word 스크롤하지 않고 단어 문서의 페이지 또는 제목으로 이동합니다.

주요 방법은 문서의 특정 노드로 커서 위치를 이동할 수 있습니다. [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/) 방법

다음 코드 예제에서는 이동 방법을 보여 줍니다 **DocumentBuilder** 문서의 다른 노드에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

그러나 기본 외에 **MoveTo** 방법,더 구체적인 것들이 있습니다.

### 문서의 시작 또는 끝으로 이동

당신은 사용하여 문서의 시작 또는 끝으로 갈 수 있습니다 [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) 그리고 [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/) 방법.

다음 코드 예제에서는 커서 위치를 문서의 시작 또는 끝으로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### 북마크로 이동

당신은 당신이 찾아 쉽게 다시 이동하려는 장소를 표시 할 수 있습니다. 원하는 만큼 많은 책갈피를 문서에 삽입한 다음 고유한 이름을 가진 책갈피를 식별하여 탐색할 수 있습니다. 다음을 사용하여 책갈피로 이동할 수 있습니다 [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) 방법

다음 코드 예제에서는 커서 위치를 책갈피로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### 표 셀로 이동

다음을 사용하여 테이블 셀로 이동할 수 있습니다 [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/) 방법 이 방법을 사용하면 커서를 특정 테이블의 모든 셀로 이동할 수 있습니다. 또한 인덱스를 지정하여 커서를 셀 내의 임의의 위치 또는 지정된 문자로 이동할 수 있습니다 **MoveToCell** 방법

다음 코드 예제에서는 커서 위치를 지정된 테이블 셀로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### 필드로 이동

다음을 사용하여 문서의 특정 필드로 이동할 수 있습니다 [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/) 방법 또한 다음을 사용하여 특정 병합 필드로 이동할 수 있습니다 [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) 방법

다음 코드 예제에서는 문서 작성기 커서를 특정 필드로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### 머리글 또는 바닥글로 이동

다음을 사용하여 머리글 또는 바닥글의 시작 부분으로 이동할 수 있습니다 [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/) 방법

다음 코드 예제에서는 문서 작성기 커서를 문서 머리글 또는 바닥글로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### 섹션 또는 단락으로 이동

다음을 사용하여 특정 섹션 또는 단락으로 이동할 수 있습니다 [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) 또는 [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/) 방법. 또한 인덱스를 지정하여 커서를 단락 내의 임의의 위치 또는 지정된 문자로 이동할 수 있습니다 **MoveToParagraph** 방법

다음 코드 예제에서는 문서의 특정 섹션 및 특정 단락으로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
