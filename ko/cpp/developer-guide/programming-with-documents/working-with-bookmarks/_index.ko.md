---
title: 책갈피 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 북마크 작업
linktitle: 북마크 작업
description: "책갈피 개념 이해 및 책갈피를 사용하여 프로그램에서 사용할 수있는 방법 C++."
type: docs
weight: 180
url: /ko/cpp/working-with-bookmarks/
---

북마크는 Microsoft Word 나중에 참조할 수 있도록 이름을 지정하고 식별하는 위치 또는 조각을 문서화합니다. 예를 들어 책갈피를 사용하여 나중에 수정할 텍스트를 식별할 수 있습니다. 문서를 스크롤하여 텍스트를 찾는 대신 책갈피 대화 상자를 사용하여 해당 텍스트로 이동할 수 있습니다.

다음을 사용하여 북마크로 수행 할 수있는 작업 Aspose.Words 당신이 사용하여 수행 할 수있는 것과 동일합니다 Microsoft Word. 새 책갈피를 삽입,삭제,책갈피로 이동,책갈피 이름 가져 오기 또는 설정,가져 오기 또는 그 안에 동봉 된 텍스트를 설정할 수 있습니다. 함께 Aspose.Words,보고서 또는 문서의 북마크를 사용하여 일부 데이터를 북마크에 삽입하거나 콘텐츠에 특수 서식을 적용 할 수도 있습니다. 책갈피를 사용하여 문서의 특정 위치에서 텍스트를 검색할 수도 있습니다.

## 책갈피 삽입

사용 [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) 그리고 [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) 각각 시작과 끝을 표시하여 책갈피를 만들 수 있습니다. 두 가지 방법 모두에 동일한 북마크 이름을 전달하는 것을 잊지 마십시오. 문서의 책갈피는 겹쳐서 모든 범위에 걸쳐 있을 수 있습니다. 잘못 형성된 책갈피 또는 중복 이름을 가진 책갈피는 문서를 저장할 때 무시됩니다.

다음 코드 예제에서는 새 책갈피를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## 책갈피 얻기

때로는 책갈피를 통해 또는 다른 목적으로 반복하기 위해 책갈피 컬렉션을 얻을 필요가 있습니다. 사용 [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) 반환하는 모든 문서 노드에 의해 노출되는 속성 [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) 이 노드에 포함된 문서의 부분을 나타내는 개체입니다. 이 개체를 사용하여 [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) 그런 다음 컬렉션 인덱서를 사용하여 특정 책갈피를 가져옵니다.

다음 코드 예제에서는 책갈피 컬렉션에서 책갈피를 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

다음 코드 예제에서는 책갈피 이름 및 텍스트를 가져오거나 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

다음 코드 예제에서는 테이블 책갈피를 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

책갈피 이름을 문서에 이미 있는 이름으로 변경하면 오류가 발생하지 않으며 문서를 저장할 때 첫 번째 책갈피만 저장됩니다.

{{% alert color="primary" %}}

문서의 일부 책갈피는 양식 필드에 할당됩니다. 이러한 책갈피로 이동하고 거기에 텍스트를 삽입하면 텍스트가 양식 필드 코드에 삽입됩니다. 이렇게 하면 양식 필드가 무효화되지는 않지만 삽입된 텍스트는 필드 코드의 일부가 되므로 표시되지 않습니다.

{{% /alert %}}

## 책갈피로 이동

북마크에 일반 텍스트뿐만 아니라 풍부한 콘텐츠를 삽입해야 하는 경우 다음을 사용해야 합니다 [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) 커서를 책갈피로 이동한 다음 [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 콘텐츠를 삽입하는 방법 및 속성.

## 북마크 콘텐츠 숨기기 표시

전체 책갈피(*including the bookmarked content*)의 실제 부분 안에 캡슐화 될 수 있습니다. `IF` 필드 사용 Aspose.Words. 그것은 그런 방식으로 될 수 있습니다 `IF` 필드에 식에 중첩된 병합 필드가 포함되어 있습니다.*Left of Operator*)그리고 병합 필드의 값에 따라, `IF` 필드 표시 또는 워드 문서에서 책갈피의 내용을 숨 깁니다.

다음 코드 예제에서는 책갈피를 표시/숨기는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
