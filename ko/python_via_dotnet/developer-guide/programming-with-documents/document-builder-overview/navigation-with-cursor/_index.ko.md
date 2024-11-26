---
title: Python에서 커서를 이용한 탐색
second_title: Python via .NET용 Aspose.Words
articleTitle: 커서를 이용한 탐색
linktitle: 커서를 이용한 탐색
description: "Python를 사용하여 단락, 책갈피 또는 특정 문자와 같은 문서 내의 여러 노드 간을 탐색합니다."
type: docs
weight: 10
url: /ko/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

문서 작업을 하는 동안 문서가 짧든 길든 문서를 탐색해야 합니다. 가상 커서를 사용한 탐색은 문서의 여러 노드 사이를 탐색하는 기능을 나타냅니다.

짧은 문서 내에서는 키보드의 화살표 키를 사용하거나 마우스를 클릭하여 원하는 위치에 삽입 지점을 위치시켜 삽입 지점을 이동할 수 있으므로 문서 내에서 이동하는 것이 간단합니다. 그러나 페이지가 많은 큰 문서가 있으면 이러한 기본 기술로는 충분하지 않습니다.

이 문서에서는 문서 내에서 이동하고 가상 커서를 사용하여 문서의 다른 부분으로 이동하는 방법을 설명합니다.

## 현재 커서 위치 감지

문서 탐색 프로세스를 시작하기 전에 현재 선택된 노드를 가져와야 합니다. [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) 속성을 사용하면 선택한 노드에서 커서의 정확한 위치를 얻을 수 있습니다. 또한 현재 노드를 가져오는 대신 [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) 및 [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) 속성을 사용하여 현재 선택된 단락이나 현재 선택된 섹션을 가져올 수 있습니다.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)를 사용하여 수행하는 모든 삽입 작업은 [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) 앞에 삽입됩니다. 현재 단락이 비어 있거나 커서가 단락 끝 바로 앞에 위치하면 [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/)는 None을 반환합니다.

## 문서에서 메소드 탐색

텍스트를 편집할 때 문서를 탐색하는 방법과 문서 내에서 정확히 이동할 위치를 아는 것이 중요합니다. Aspose.Words를 사용하면 문서 내에서 이동하고 다양한 섹션과 부분으로 이동할 수 있습니다. 이는 스크롤하지 않고 Word 문서의 페이지나 제목으로 이동하는 Microsoft Word의 탐색 창 기능과 유사합니다.

주요 방법은 커서 위치를 문서의 특정 노드로 이동할 수 있는 것입니다. [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) 방법을 사용하면 이를 수행할 수 있습니다.

다음 코드 예제에서는 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)를 문서의 다른 노드로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

그러나 기본적인 [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) 방법 외에도 더 구체적인 방법이 있습니다.

### 문서의 시작 또는 끝으로 이동

[move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) 및 [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) 방법을 사용하여 문서의 시작이나 끝으로 이동할 수 있습니다.

다음 코드 예제에서는 커서 위치를 문서의 시작 또는 끝으로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### 북마크로 탐색

찾고 싶은 장소를 표시하고, 쉽게 다시 이동할 수 있습니다. 원하는 만큼 책갈피를 문서에 삽입한 다음 고유한 이름으로 책갈피를 식별하여 탐색할 수 있습니다. [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) 방식을 이용하여 북마크로 이동할 수 있습니다.

다음 코드 예제에서는 커서 위치를 책갈피로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### 표 셀로 이동

[move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) 방법을 사용하여 테이블 셀로 이동할 수 있습니다. 이 방법을 사용하면 커서를 특정 테이블의 셀로 이동할 수 있습니다. 또한 [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) 메서드 내에서 커서를 셀의 임의 위치나 지정된 문자로 이동하기 위한 인덱스를 지정할 수 있습니다.

다음 코드 예제에서는 커서 위치를 지정된 테이블 셀로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### 필드로 이동

[move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) 메서드를 사용하여 문서의 특정 필드로 이동할 수 있습니다. 또한 [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) 방식을 이용하면 특정 병합 필드로 이동할 수 있습니다.

다음 코드 예제에서는 문서 작성기 커서를 특정 필드로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### 머리글 또는 바닥글로 이동

[move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) 메서드를 사용하면 머리글이나 바닥글의 시작 부분으로 이동할 수 있습니다

다음 코드 예제에서는 문서 작성기 커서를 문서 머리글 또는 바닥글로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### 섹션 또는 단락으로 이동

[move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) 또는 [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) 방법을 사용하여 특정 섹션이나 단락으로 이동할 수 있습니다. 또한 [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) 메서드 내 단락의 특정 문자나 임의의 위치로 커서를 이동하기 위한 인덱스를 지정할 수 있습니다.

다음 코드 예제에서는 문서의 특정 섹션 및 특정 단락으로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
