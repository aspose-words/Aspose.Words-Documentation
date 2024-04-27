---
title: 책갈피 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 즐겨찾기 작업
linktitle: 즐겨찾기 작업
description: "책갈피 개념과 책갈피는 어떻게 당신의 프로그램에 사용될 수 있는가? Java·"
type: docs
weight: 180
url: /ko/java/working-with-bookmarks/
---

즐겨찾기에 추가 Microsoft Word 이름과 미래 참조를 식별하는 위치 또는 파편을 문서화합니다. 예를 들어, 나중에 수정하려는 텍스트를 식별 할 수 있습니다. 문서를 통해 스크롤하는 대신 텍스트를 찾습니다. 즐겨찾기 대화 상자를 사용하여 이동할 수 있습니다.

이름 * Aspose.Words, 당신은보고 또는 문서에 책갈피를 사용할 수 있습니다. 일부 데이터를 책갈피로 삽입하거나 내용에 특별한 형식을 적용 할 수 있습니다. 문서의 특정 위치에서 텍스트를 검색 할 책갈피도 사용할 수 있습니다.

사용 책갈피로 수행 할 수있는 작업 Aspose.Words 당신이 사용 할 수있는 것과 동일 Microsoft Word· 새 책갈피, 삭제, 책갈피로 이동하거나 책갈피 이름을 설정할 수 있습니다.

## 책갈피

제품 정보 [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) · [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) 시작과 끝을 표시하여 책갈피를 만듭니다. 같은 책갈피 이름을 두 방법 모두 통과하는 것을 잊지 마십시오. 문서의 책갈피와 범위에 걸쳐 할 수 있습니다. 잘못된 모양 책갈피 또는 중복 이름과 책갈피는 문서가 저장될 때 무시될 것입니다.

{{% alert color="primary" %}}

책갈피에 있는 모든 백색 공간은 underscores로 대체되었습니다. 이 제한은 MS Word 형식의 책갈피부터 DOCX 또는 DOC와 같은 MS Word 형식까지 흰색 공간을 가질 수 없습니다. 그러나 PDF는 그런 책갈피를 허용합니다. 이제 PDF에서 bookmarks를 사용해야하는 경우, XPS 또는 SWF 개요, 당신은 흰색 공간을 사용할 수 있습니다.

{{% /alert %}}

다음 코드 예제는 새로운 책갈피를 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## 즐겨찾기

때로는 책갈피 또는 기타 목적으로 책갈피 수집을 얻기 위해서는 필요합니다. 사용 방법 **Node.getRange에 대해** 모든 문서 노드에 노출된 속성 **Range** 이 노드에 포함된 문서의 일부를 나타내는 객체. 이 개체를 사용하여 검색 **BookmarkCollection** 그리고 그런 다음 컬렉션 인덱스를 사용하여 특정 책갈피를 얻습니다.

{{% alert color="primary" %}}

다음 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx)·

{{% /alert %}}

다음 코드 예제는 책갈피 컬렉션에서 책갈피를 얻는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

다음 코드 예제는 책갈피 이름과 텍스트를 얻는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

다음 코드 예제는 테이블을 책갈피하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

문서에 이미 존재하는 이름에 책갈피의 이름을 변경하면 오류가 생성되지 않으며 첫 번째 책갈피는 문서를 저장할 때 저장됩니다.

문서의 일부 책갈피는 양식 필드에 할당됩니다. 그런 책갈피로 이동하고 텍스트를 삽입하고 텍스트를 양식 필드 코드로 삽입합니다. 이 양식 필드를 유효하지 않지만 삽입 된 텍스트는 필드 코드의 일부이기 때문에 볼 수 없습니다.

다음 코드 예제는 책갈피 테이블의 열에 액세스하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## 즐겨찾기로 이동

풍부한 콘텐츠를 삽입 할 필요가 있다면 (단어 텍스트가 아닙니다) 책갈피로 사용해야합니다. [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) 책갈피에 커서를 이동하고 다음 사용 **DocumentBuilder** 컨텐츠를 삽입하는 방법 및 속성.

## Hide 즐겨찾기

전체 책갈피 (*를 포함하여 bookmarked content*)는 True 부분 안에 캡슐화될 수 있습니다 `IF` 본문 바로가기 Aspose.Words· 그런 방법으로 할 수 있습니다. `IF` 필드는 표현 (*Left of operator*)의 배열 된 Merge 필드를 포함하고 Merge Field의 값에 따라 `IF` 필드는 Word 문서의 책갈피의 내용을 보여줍니다.

다음 코드 예제는 표시 / 숨기기 북마크를 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
