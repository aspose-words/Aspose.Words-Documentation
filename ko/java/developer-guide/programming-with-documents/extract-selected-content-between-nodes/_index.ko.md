---
title: Nodes 사이에 선택된 내용 추출 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서의 Nodes 사이 추출 내용
linktitle: Nodes 사이 추출 내용
type: docs
description: "다른 사용에서 문서 콘텐츠를 추출 Java·"
weight: 140
url: /ko/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

문서 작업을 할 때 문서 내에서 특정 범위에서 콘텐츠를 쉽게 추출 할 수 있습니다. 그러나 내용은 단락, 테이블, 이미지 등과 같은 복잡한 요소로 구성됩니다.

어떤 내용이 추출되어야 하는지, 그 콘텐츠를 추출하는 방법은 항상 노드가 사이에서 콘텐츠를 추출하기 위해 선택된 것으로 결정됩니다. 이 텍스트 전체 또는 간단한 텍스트 실행할 수 있습니다.

많은 가능한 상황과 따라서 콘텐츠를 추출 할 때 고려하는 많은 다른 노드 유형이 있습니다. 예를 들어, 사이 콘텐츠를 추출 할 수 있습니다

- 두 개의 특정 단락
- 텍스트의 특정 실행
- 병합 분야와 같은 다양한 유형의 분야
- 책갈피 또는 코멘트의 시작 및 끝 범위
- 별도의 부분에서 포함된 다양한 텍스트

일부 상황에서는 단락과 필드 사이의 내용 추출과 같은 다른 노드 유형을 결합 할 수도 있습니다. 또는 실행과 북마크 사이에.

이 문서는 다른 노드 사이에 텍스트를 추출하기위한 코드 구현뿐만 아니라 일반적인 시나리오의 예입니다.

{{% alert color="primary" %}}

이 예제는 많은 가능성의 몇 가지 데모입니다. 우리는 대중의 일부가 될 텍스트 추출 기능을 계획 API 앞으로도 추가적인 코드가 필요하지 않습니다. 한편, 이 기능에 대한 요청을 게시하는 것은 무료 [Aspose.Words 관련 기사](https://forum.aspose.com/c/words/8)·

{{% /alert %}}

## 왜 추출 내용

콘텐츠를 추출하는 목표는 중복되거나 새 문서에서 별도로 저장하는 것입니다. 예를 들면, 당신은 내용과 추출할 수 있습니다:

- 별도의 문서로 복사
- 문서의 특정 부분을 PDF 또는 이미지로 변환
- 문서에서 콘텐츠를 여러 번 복제
- 문서의 나머지 부분에서 분리되는 추출된 내용 작업

쉽게 사용할 수 있습니다. Aspose.Words 아래 코드 구현.

## 추출 내용 Algorithm

이 섹션의 코드는 일반적으로 재사용 가능한 방법 위에 설명 된 가능한 상황의 모든 주소. 이 기술의 일반적인 개요는 다음과 같습니다

1. 명세 문서에서 추출 될 콘텐츠의 영역을 결정하는 노드를 가집니다. 이 노드를 검색하면 코드를 사용자에 의해 처리됩니다.
1. 명세 이 노드를 전달 **ExtractContent** 아래에서 제공된 방법. boolean 매개변수를 전달해야 합니다. 이 노드는 Markers와 동일하게 동작하는지 여부를 나타냅니다.
1. 명세 추출 될 지정된 복제 된 콘텐츠 (copied nodes)의 목록을 검색합니다. 적용 가능한 방법으로 노드의 이 목록을 사용할 수 있습니다. 예를 들어, 선택한 컨텐츠만 포함하는 새 문서 생성.

## 내용 추출 방법

우리는이 문서에서 아래 문서와 함께 작동합니다. 다양한 콘텐츠를 볼 수 있습니다. 또한, 문서에는 첫 번째 페이지의 중간에 두 번째 섹션이 포함되어 있습니다. 책갈피와 의견은 문서에 제시되지만 아래 스크린 샷에서 볼 수 없습니다.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

귀하의 문서에서 콘텐츠를 추출하려면 `ExtractContent` 아래 방법 및 적절한 매개 변수를 전달합니다.

블록 레벨 노드(paragraphs and Table)를 발견하고 동일한 사본을 생성하기 위해 복제합니다. 마커 노드가 블록 레벨을 통과하면 그 레벨에 콘텐츠를 복사하고 배열에 추가 할 수 있습니다.

그러나, 마커 노드가 인라인 (단백의 아이)이면 상황은 더 복잡하게됩니다. 인라인 노드에서 단락을 분할하기 위해서는 실행, 북마크 필드 등과 같은 것입니다. 클로드 부모 노드의 내용은 마커가 제거된 상태입니다. 이 프로세스는 인라인 노드가 여전히 부모 단락의 형식을 유지하도록 사용됩니다.

노드에 체크를 실행하고 노드가 유효하지 않은 경우 예외를 던집니다. 이 방법으로 전달되는 매개 변수는:

1. 명세 **StartNode** · **EndNode**· 첫 번째 두 매개 변수는 내용의 추출이 시작되고 종료되는 노드입니다. 이 노드는 모두 블록 레벨이 될 수 있습니다 ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) · [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) 또는 인라인 수준 (e.g [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) · [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) · [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) 등):
   1. 필드를 통과하려면 대응을 통과해야합니다. **FieldStart** 이름 *
   1. 책갈피를 통과하기 위하여, **BookmarkStart** · [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) 노드가 전달되어야 합니다.
   1. 코멘트를 전달하기 위해, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) · [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) 노드가 사용되어야 합니다.
1. 명세 **IsInclusive**· 마커가 추출에 포함 된 경우 Defines. 이 옵션이 설정된 경우 false 동일한 노드 또는 연속 노드가 전달되고, 빈 목록이 반환됩니다

      1. 만약 **FieldStart** 노드가 전달되면이 옵션은 전체 필드가 포함되거나 제외되는 경우 정의됩니다.
      1. 만약 **BookmarkStart** 또는 **BookmarkEnd** 노드가 전달되면, 이 옵션은 책갈피가 포함되어 있거나 책갈피 범위의 내용이 정의됩니다.
      1. 만약 **CommentRangeStart** 또는 **CommentRangeEnd** 노드가 전달되면, 이 옵션은 코멘트 자체가 포함되거나 댓글 범위의 내용이 정의됩니다.

의 구현 **ExtractContent** 찾을 수 있는 방법 [이름 *](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java)· 이 방법은이 문서의 시나리오에 참조됩니다.

우리는 또한 사용자 정의 방법을 정의하여 쉽게 추출 된 노드에서 문서를 생성합니다. 이 방법은 아래에 많은 시나리오에서 사용 하 고 단순히 새로운 문서를 생성 하 고 추출된 콘텐츠를 가져올.

다음과 같은 코드 예제는 노드 목록을 가지고 새로운 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Paragraphs 사이 추출 내용

위의 방법을 사용하여 특정 단락 사이의 콘텐츠를 추출하는 방법을 보여줍니다. 이 경우, 우리는 문서의 첫 번째 절반에서 발견 된 편지의 몸을 추출하고 싶습니다. 우리는 7 번째와 11 번째 단락 사이임을 말할 수 있습니다.

아래 코드는이 작업을 수행. 적절한 단락은 추출됩니다. [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) 문서의 방법 및 지정된 인덱스를 전달합니다. 그런 다음 노드를 전달합니다. **ExtractContent** 이 추출에 포함되는 방법 및 상태. 이 방법은 이 노드 사이에 복사 된 내용을 반환합니다. 그런 다음 새 문서에 삽입됩니다.

다음 코드 예제는 특정 단락 사이의 내용을 추출하는 방법을 보여줍니다. `ExtractContent` 위 방법:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)·

{{% /alert %}}

출력 문서는 추출 된 두 단락을 포함합니다.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Nodes의 다른 유형 사이 추출 내용

블록 레벨 또는 인라인 노드의 조합 사이에 콘텐츠를 추출할 수 있습니다. 아래 이 시나리오에서 우리는 첫 번째 단락과 두 번째 섹션의 테이블 사이의 콘텐츠를 추출합니다. Markers 노드를 호출합니다. [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) · [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) 문서의 두 번째 섹션에서 적절한 검색 **Paragraph** · **Table** 노드. 약간의 변이를 위해 대신 콘텐츠를 복제하고 원본 아래에 삽입하십시오.

다음 코드 예제는 단락과 테이블 사이의 내용을 추출하는 방법을 보여줍니다 **ExtractContent** 방법:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)·

{{% /alert %}}

단락과 테이블 사이의 내용은 아래와 같습니다.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Paragraphs 사이 추출 내용 본문 바로가기

동일한 또는 다른 스타일의 단락 사이 내용을 추출 할 수 있습니다.

아래 코드는 이것을 달성하는 방법을 보여줍니다. "Heading 1"과 "Header 3"스타일의 첫 번째 인스턴스 사이의 콘텐츠를 추출 할 수있는 간단한 예입니다. 이렇게하려면 마지막 매개 변수를 설정 false, Marker 노드가 포함되어 있지 않다는 것을 지정합니다.

적절한 구현에서이 양식의 모든 단락 사이에 콘텐츠를 추출하는 루프에서 실행해야합니다. 추출된 내용은 새 문서로 복사됩니다.

다음 코드 예제는 특정 스타일과 단락 사이의 콘텐츠를 추출하는 방법을 보여줍니다. **ExtractContent** 방법:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)·

{{% /alert %}}

아래는 이전 작업의 결과입니다.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## 특정 실행 사이 추출 내용

인라인 노드 사이의 콘텐츠를 추출할 수 있습니다. **Run** 한국어 **Runs** 다른 단락에서 마커로 전달 될 수 있습니다. 아래 코드는 특정 텍스트를 추출하는 방법을 보여줍니다. **Paragraph** 노드.

다음 코드 예제는 같은 단락의 특정 실행 사이에 콘텐츠를 추출하는 방법을 보여줍니다 **ExtractContent** 방법:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)·

{{% /alert %}}

추출된 텍스트는 콘솔에 표시됩니다

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## 본문 바로가기

표시기로 필드를 사용하려면, `FieldStart` 노드가 전달되어야 합니다. 마지막 매개변수 `ExtractContent` 전체 필드가 포함되어 있지 않다면 메소드를 정의합니다. "FullName" 병합 필드와 문서의 단락 사이의 내용을 추출하자. 우리는 [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) 방법의 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 수업. 이것은 반환합니다 **FieldStart** 병합의 이름으로 노드가 전달되었습니다.

우리의 경우, 마지막 매개 변수를 전달 **ExtractContent** 관련 제품 false 추출에서 필드를 제외합니다. 우리는 PDF로 추출 된 콘텐츠를 렌더링합니다.

다음 코드 예제는 문서의 특정 필드와 단락 사이의 콘텐츠를 추출하는 방법을 보여줍니다. **ExtractContent** 방법:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)·

{{% /alert %}}

필드와 단락 사이 추출 된 내용, 필드와 단락 마커 노드가 PDF로 렌더링.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## 즐겨찾기에 추가

문서에서는 책갈피 안에 정의된 내용이 캡슐화됩니다. `BookmarkStart` and BookmarkEnd 노드. 이 두 개의 노드 사이에 발견 된 내용은 책갈피를 만듭니다. 이 노드 중 하나를 어떤 마커로 전달할 수 있습니다. 다른 북마크 중 하나도 문서의 종료 마커 이전에 나타나는 시작 마커로 표시됩니다.

샘플 문서에서는 "Bookmark1"라는 책갈피가 있습니다. 이 책갈피의 내용은 우리의 문서에 있는 내용 강조됩니다:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

아래 코드를 사용하여 새 문서에 이 콘텐츠를 추출합니다. 더 보기 **IsInclusive** 매개변수 선택권은 책갈피를 유지하는 방법을 보여줍니다.

다음 코드 예제는 내용을 참조하는 방법을 보여줍니다 bookmark 사용 **ExtractContent** 방법:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)·

{{% /alert %}}

추출된 출력 `IsInclusive` 매개 변수 설정 true· 사본은 책갈피를 뿐입니다.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

추출된 출력 **IsInclusive** 매개 변수 설정 false· 복사는 내용이 포함되어 있지만 bookmark없이.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## 코멘트에서 추출 내용

주석은 CommentRangeStart, CommentRangeEnd 및 Comment 노드로 구성됩니다. 이 노드의 모든 것은 인라인입니다. 첫 번째 두 노드는 아래 스크린 샷에서 볼 때 언급 된 문서의 내용을 캡슐화합니다.

더 보기 **Comment** 노드 자체는 [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) 단락과 실행을 포함 할 수 있습니다. 그것은 검토 판에 댓글 거품으로 본 코멘트의 메시지를 나타냅니다. 이 노드는 인라인으로 몸의 후손으로 이 메시지 안에서 콘텐츠를 추출할 수 있습니다.

우리의 문서에서 우리는 하나의 의견이 있습니다. 검토 탭에서 마크 업을 보여주기 위해:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

댓글은 두 번째 섹션에서 제목, 첫 번째 단락 및 테이블을 캡슐화합니다. 이 코멘트를 새로운 문서로 추출하자. 더 보기 **IsInclusive** 댓글 자체가 유지되거나 삭제 된 경우 옵션을 결정합니다.

다음 코드 예제는 다음과 같은 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)·

{{% /alert %}}

첫째로 추출된 출력으로 `IsInclusive` 매개 변수 설정 true· 복사는 코멘트를 포함 할 것입니다.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

둘째로 추출된 출력 **이름 *** 설정하기 false· 복사는 내용이 포함되어 있지만 주석없이.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## DocumentVisitor를 이용한 추출 내용

Aspose.Words 창조를 위해 뿐만 아니라 사용될 수 있습니다 Microsoft Word 문서는 데이터와 동적 또는 merging 템플릿을 구축하여 헤드러, footers, 단락, 테이블, 이미지 및 기타와 같은 별도의 문서 요소를 추출하기 위해 문서를 파싱합니다. 다른 가능한 작업은 특정 포맷 또는 스타일의 모든 텍스트를 찾을 수 있습니다.

사용 방법 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 이 사용 시나리오를 구현하는 클래스. 이 클래스는 잘 알려진 방문자 디자인 패턴에 해당합니다. 이름 * [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), 당신은 문서 트리에 과잉을 요구하는 사용자 정의 작업을 정의하고 실행할 수 있습니다.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 설정하기 **VisitXXX** 특정 문서 요소 (node)가 발생할 때 호출되는 방법. 예를 들어, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) 텍스트 단락의 시작이 발견 될 때 호출 [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) 텍스트 단락의 끝이 발견되면 호출됩니다. 각 각 **DocumentVisitor.VisitXXX** 메서드는 해당 객체를 허용하므로 필요한대로 사용할 수 있습니다. (문자 검색), e.g. 모두 [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) · [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) 이름 * [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 이름 *

각 각 **DocumentVisitor.VisitXXX** 방법 반환 **VisitorAction** 노드의 낭비를 제어하는 값. 현재 노드를 건너 뛰거나, 노드의 축소를 중지할 수 있습니다.

이 단계는 programmatically 결정 하 고 문서의 다양한 부분을 추출 해야 합니다:

-에서 파생된 클래스 만들기 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)·
- Override 및 일부 또는 모두에 대한 구현 제공 **DocumentVisitor.VisitXXX** 몇몇 주문 가동을 실행하는 방법.
- 전화 [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) 노드에서 enumeration을 시작합니다. 예를 들어, 전체 문서를 enumerate하려는 경우, 사용 [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor)·

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 모든 것에 대한 기본 구현 **DocumentVisitor.VisitXXX** 방법. 특히 방문자가 overridden 일 필요가있는 방법으로 새 문서 방문자를 쉽게 만들 수 있습니다. 모든 방문자 방법을 무시할 필요가 없습니다.

다음 예제는 방문자 패턴을 사용하여 새로운 작업을 추가하는 방법을 보여줍니다. Aspose.Words 객체 모델. 이 경우 텍스트 형식으로 간단한 문서 변환기를 만듭니다

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## 추출 텍스트 지원하다

문서에서 텍스트를 검색하는 방법은 다음과 같습니다

- 사용 [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 이름 * [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 파일 또는 스트림에 일반 텍스트 저장
- 사용 [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) 그리고 패스 `SaveFormat.Text` 모수. Internally, this invokes save as text into the Memory stream and return the resulting string
- 사용 [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) 모든 텍스트를 검색 Microsoft Word 필드 코드를 포함한 문자 제어
- 사용자 정의 구현 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 사용자 정의 추출

### 사용 방법 `Node.GetText` · `Node.ToString`

· Word 문서는 필드, 세포의 끝, 섹션 등의 특수 요소를 지정하는 제어 문자를 포함 할 수 있습니다. 가능한 Word 제어 문자의 전체 목록은 정의됩니다. **ControlChar** 수업. 더 보기 [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) 메소드는 노드에서 존재하는 제어 문자의 모든 텍스트를 반환합니다.

ToString 호출은 제어 문자없이 문서의 일반 텍스트 표현을 반환합니다. 일반 텍스트로 수출에 대한 자세한 내용은 **Using SaveFormat.Text**·

다음 코드 예제는 호출의 차이를 보여줍니다. **GetText** · [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) 노드의 방법:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### 사용 방법 `SaveFormat.Text`

이 예제는 다음과 같이 문서를 저장합니다

- 필드 문자 및 필드 코드, 모양, 발주, endnote 및 주석 참조 필터
- 단락의 끝을 대체 [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) 문자와 [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) 지원하다
- UTF8 인코딩 사용

다음 코드 예제는 TXT 형식으로 문서를 저장하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Shapes에서 이미지 추출

문서 이미지를 추출해야 할 수도 있습니다. Aspose.Words 이것을 할 수 있습니다.

다음 코드 예제는 문서에서 이미지를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
