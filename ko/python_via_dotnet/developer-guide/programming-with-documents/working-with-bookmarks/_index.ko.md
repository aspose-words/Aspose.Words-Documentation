---
title: Python에서 북마크 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 북마크 작업
linktitle: 북마크 작업
description: "Python를 사용하여 북마크를 삽입, 획득, 이동, 표시 또는 숨기는 방법."
type: docs
weight: 180
url: /ko/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

북마크는 Microsoft Word 문서에서 나중에 참조할 수 있도록 이름을 지정하고 식별하는 위치 또는 조각을 식별합니다. 예를 들어 나중에 수정하려는 텍스트를 식별하기 위해 책갈피를 사용할 수 있습니다. 텍스트를 찾기 위해 문서를 스크롤하는 대신 책갈피 대화 상자를 사용하여 해당 텍스트로 이동할 수 있습니다.

Aspose.Words를 사용하여 북마크로 수행할 수 있는 작업은 Microsoft Word를 사용하여 수행할 수 있는 작업과 동일합니다. 새 북마크를 삽입하고, 삭제하고, 북마크로 이동하고, 북마크 이름을 가져오거나 설정하고, 북마크에 포함된 텍스트를 가져오거나 설정할 수 있습니다. Aspose.Words를 사용하면 보고서나 문서의 북마크를 사용하여 일부 데이터를 북마크에 삽입하거나 콘텐츠에 특수 서식을 적용할 수도 있습니다. 책갈피를 사용하여 문서의 특정 위치에서 텍스트를 검색할 수도 있습니다.

## 북마크 삽입

[start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) 및 [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/)를 사용하여 각각 시작과 끝을 표시하여 북마크를 만듭니다. 두 가지 방법 모두에 동일한 북마크 이름을 전달하는 것을 잊지 마십시오. 문서의 북마크는 겹칠 수 있으며 모든 범위에 걸쳐 있을 수 있습니다. 형식이 잘못된 북마크나 이름이 중복된 북마크는 문서를 저장할 때 무시됩니다.

{{% alert color="primary" %}}

북마크의 모든 공백이 밑줄로 대체되었습니다. DOCX 또는 DOC와 같은 MS Word 형식의 책갈피에는 공백이 있을 수 없기 때문에 이러한 제한은 MS Word 형식에서 비롯되었습니다. 그러나 PDF에서는 이러한 책갈피를 허용합니다. 이제 PDF 또는 XPS 개요에서 북마크를 사용해야 하는 경우 공백과 함께 사용할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 새 책갈피를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## 북마크 획득

책갈피를 반복하거나 다른 목적을 위해 책갈피 컬렉션을 가져와야 하는 경우도 있습니다. 이 노드에 포함된 문서 부분을 나타내는 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 객체를 반환하는 문서 노드에 의해 노출되는 [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) 속성을 사용하세요. 이 개체를 사용하여 [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/)을 검색한 다음 컬렉션 인덱서를 사용하여 특정 책갈피를 가져옵니다.

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx)에서 이러한 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제는 북마크 컬렉션에서 북마크를 얻는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

다음 코드 예제에서는 책갈피 이름과 텍스트를 가져오거나 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

다음 코드 예제에서는 테이블을 북마크하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

북마크 이름을 문서에 이미 존재하는 이름으로 변경하면 오류가 발생하지 않으며 문서 저장 시 첫 번째 북마크만 저장됩니다.

문서의 일부 책갈피는 양식 필드에 할당되어 있습니다. 해당 북마크로 이동하여 텍스트를 삽입하면 해당 텍스트가 양식 필드 코드에 삽입됩니다. 양식 필드가 무효화되지는 않지만 삽입된 텍스트는 필드 코드의 일부가 되므로 표시되지 않습니다.

다음 코드 예제에서는 북마크된 테이블의 열에 액세스하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## 북마크로 이동

일반 텍스트뿐만 아니라 풍부한 콘텐츠를 책갈피에 삽입해야 하는 경우 [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/)를 사용하여 커서를 책갈피로 이동한 다음 [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 메서드 및 속성을 사용하여 콘텐츠를 삽입해야 합니다.

## 북마크 내용 숨기기 표시

전체 북마크(*북마크된 콘텐츠 포함*)는 Aspose.Words를 사용하여 `IF` 필드의 True 부분 내에 캡슐화될 수 있습니다. `IF` 필드에는 표현식(*연산자의 왼쪽*)에 중첩된 병합 필드가 포함되어 있고 병합 필드의 값에 따라 `IF` 필드는 Word 문서의 책갈피 내용을 표시하거나 숨기는 방식일 수 있습니다.

다음 코드 예제는 북마크를 표시하거나 숨기는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
