---
title: Java의 책갈피 작업
second_title: Aspose.WordsJava
articleTitle: 북마크 작업
linktitle: 북마크 작업
description: "책갈피 개념 및Java을 사용하여 프로그램에서 책갈피를 사용할 수 있는 방법을 이해합니다."
type: docs
weight: 180
url: /ko/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

책갈피는Microsoft Word문서에서 이름을 지정하고 나중에 참조할 수 있도록 식별하는 위치 또는 조각을 식별합니다. 예를 들어 책갈피를 사용하여 나중에 수정할 텍스트를 식별할 수 있습니다. 문서를 스크롤하여 텍스트를 찾는 대신 책갈피 대화 상자를 사용하여 해당 텍스트로 이동할 수 있습니다.

Aspose.Words을 사용하면 보고서 또는 문서의 책갈피를 사용하여 일부 데이터를 책갈피에 삽입하거나 콘텐츠에 특수 서식을 적용할 수 있습니다. 책갈피를 사용하여 문서의 특정 위치에서 텍스트를 검색할 수도 있습니다.

Aspose.Words을 사용하여 책갈피를 사용하여 수행할 수 있는 작업은Microsoft Word을 사용하여 수행할 수 있는 작업과 동일합니다. 새 책갈피를 삽입,삭제,책갈피로 이동,책갈피 이름 가져 오기 또는 설정,가져 오기 또는 그 안에 동봉 된 텍스트를 설정할 수 있습니다.

## 책갈피 삽입

[startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)및[endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)을 사용하여 각각 시작과 끝을 표시하여 책갈피를 만듭니다. 두 가지 방법 모두에 동일한 북마크 이름을 전달하는 것을 잊지 마십시오. 문서의 책갈피는 겹쳐서 모든 범위에 걸쳐 있을 수 있습니다. 잘못 형성된 책갈피 또는 중복 이름을 가진 책갈피는 문서를 저장할 때 무시됩니다.

{{% alert color="primary" %}}

북마크의 모든 공백은 밑줄로 대체되었습니다. 이 제한은DOCX또는DOC과 같은MS단어 형식의 책갈피에는 공백이 있을 수 없기 때문에MS단어 형식에서 비롯되었습니다. 그러나PDF는 이러한 북마크를 허용합니다. 이제PDF,XPS또는SWF윤곽선에서 북마크를 사용해야하는 경우 공백과 함께 사용할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 새 책갈피를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## 책갈피 얻기

때로는 책갈피를 통해 또는 다른 목적으로 반복하기 위해 책갈피 컬렉션을 얻을 필요가 있습니다. 이 노드에 포함된 문서 부분을 나타내는**Range**개체를 반환하는 모든 문서 노드에서 노출된**Node.getRange**속성을 사용합니다. 이 개체를 사용하여**BookmarkCollection**을 검색한 다음 컬렉션 인덱서를 사용하여 특정 책갈피를 가져옵니다.

{{% alert color="primary" %}}

다음 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

다음 코드 예제에서는 책갈피 컬렉션에서 책갈피를 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

다음 코드 예제에서는 책갈피 이름 및 텍스트를 가져오거나 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

다음 코드 예제에서는 테이블 책갈피를 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

책갈피 이름을 문서에 이미 있는 이름으로 변경하면 오류가 발생하지 않으며 문서를 저장할 때 첫 번째 책갈피만 저장됩니다.

문서의 일부 책갈피는 양식 필드에 할당됩니다. 이러한 책갈피로 이동하고 거기에 텍스트를 삽입하면 텍스트가 양식 필드 코드에 삽입됩니다. 이렇게 하면 양식 필드가 무효화되지는 않지만 삽입된 텍스트는 필드 코드의 일부가 되므로 표시되지 않습니다.

다음 코드 예제에서는 책갈피된 테이블의 열에 액세스하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## 책갈피로 이동

서식 있는 콘텐츠(일반 텍스트 뿐 아니라)를 책갈피에 삽입해야 하는 경우[moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)을 사용하여 커서를 책갈피로 이동한 다음**DocumentBuilder**메서드와 속성을 사용하여 콘텐츠를 삽입해야 합니다.

## 북마크 콘텐츠 숨기기 표시

전체 책갈피(*including the bookmarked content*)는Aspose.Words를 사용하여`IF`필드의 실제 부분 내에 캡슐화 할 수 있습니다. `IF`필드에는 식(*Left of Operator*)에 중첩된 병합 필드가 포함될 수 있으며 병합 필드의 값에 따라`IF`필드는 워드 문서에서 책갈피의 내용을 표시하거나 숨깁니다.

다음 코드 예제에서는 책갈피를 표시/숨기는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
