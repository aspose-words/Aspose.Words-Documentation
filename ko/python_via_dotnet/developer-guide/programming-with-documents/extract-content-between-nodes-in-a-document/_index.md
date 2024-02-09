---
title: 문서 노드 간 콘텐츠 추출
second_title: Python용 Aspose.Words
articleTitle: 문서의 노드 간 콘텐츠 추출
linktitle: 노드 간 콘텐츠 추출
description: "Python를 사용하여 문서 내 범위에서 특정 콘텐츠를 쉽게 추출하는 방법."
type: docs
weight: 140
url: /ko/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

문서 작업 시 문서 내 특정 범위의 콘텐츠를 쉽게 추출할 수 있는 것이 중요합니다. 다만, 내용은 문단, 표, 이미지 등 복잡한 요소로 구성될 수 있습니다.

어떤 콘텐츠를 추출해야 하는지에 관계없이 해당 콘텐츠를 추출하는 방법은 항상 콘텐츠를 추출하기 위해 어떤 노드가 선택되는지에 따라 결정됩니다. 이는 전체 텍스트 본문이거나 간단한 텍스트 실행일 수 있습니다.

가능한 상황은 다양하므로 콘텐츠를 추출할 때 고려해야 할 노드 유형도 다양합니다. 예를 들어 다음 사이에서 콘텐츠를 추출할 수 있습니다

- 두 개의 특정 단락
- 특정 텍스트 실행
- 병합 필드 등 다양한 유형의 필드
- 북마크 또는 댓글의 시작 및 끝 범위
- 별도의 섹션에 포함된 다양한 텍스트 본문

어떤 상황에서는 단락과 필드 사이 또는 실행과 책갈피 사이에서 콘텐츠를 추출하는 등 다양한 노드 유형을 결합해야 할 수도 있습니다.

이 문서에서는 다양한 노드 간의 텍스트를 추출하기 위한 코드 구현과 일반적인 시나리오의 예를 제공합니다.

{{% alert color="primary" %}}

이러한 예는 다양한 가능성을 보여주는 몇 가지 예일 뿐입니다. 우리는 향후 텍스트 추출 기능을 공개 API의 일부로 포함할 계획이며 추가 코드가 필요하지 않습니다. 그동안 이 기능에 대한 요청을 [Aspose.Words 포럼](https://forum.aspose.com/c/words/8)에 자유롭게 게시해 주세요.

{{% /alert %}}

## 콘텐츠를 추출하는 이유

콘텐츠를 추출하는 목적은 콘텐츠를 새 문서에 별도로 복제하거나 저장하는 것인 경우가 많습니다. 예를 들어 콘텐츠를 추출하고 다음을 수행할 수 있습니다

- 별도의 문서에 복사하세요
- 문서의 특정 부분을 PDF나 이미지로 변환
- 문서의 내용을 여러 번 복제
- 문서의 나머지 부분과 별도로 추출된 콘텐츠로 작업

이는 Aspose.Words와 아래 코드 구현을 사용하여 쉽게 달성할 수 있습니다.

## 콘텐츠 추출 알고리즘

이 섹션의 코드는 일반화되고 재사용 가능한 하나의 메서드를 사용하여 위에 설명된 모든 가능한 상황을 해결합니다. 이 기술의 일반적인 개요는 다음과 같습니다

1. 문서에서 추출할 콘텐츠 영역을 지정하는 노드를 수집합니다. 이러한 노드 검색은 추출하려는 항목에 따라 코드에서 사용자가 처리합니다.
1. 아래 제공된 **ExtractContent** 메서드에 이러한 노드를 전달합니다. 또한 마커 역할을 하는 이러한 노드가 추출에 포함되어야 하는지 여부를 나타내는 부울 매개변수를 전달해야 합니다.
1. 추출하도록 지정된 복제된 콘텐츠(복사된 노드)의 목록을 검색합니다. 예를 들어 선택한 콘텐츠만 포함하는 새 문서를 만드는 등 적용 가능한 방식으로 이 노드 목록을 사용할 수 있습니다.

## 콘텐츠를 추출하는 방법

문서에서 콘텐츠를 추출하려면 아래 **추출_내용** 메서드를 호출하고 적절한 매개변수를 전달해야 합니다. 이 방법의 기본 기반에는 블록 수준 노드(단락 및 표)를 찾고 이를 복제하여 동일한 복사본을 만드는 것이 포함됩니다. 전달된 마커 노드가 블록 수준인 경우 메서드는 해당 수준의 콘텐츠를 간단히 복사하여 배열에 추가할 수 있습니다.

그러나 마커 노드가 인라인(단락의 하위)인 경우 실행, 책갈피 필드 등 인라인 노드에서 단락을 분할해야 하므로 상황이 더욱 복잡해집니다. 복제된 상위 노드의 콘텐츠는 그렇지 않습니다. 마커 사이에 존재하는 것은 제거됩니다. 이 프로세스는 인라인 노드가 여전히 상위 단락의 형식을 유지하는지 확인하는 데 사용됩니다. 또한 이 메서드는 매개변수로 전달된 노드에 대한 검사를 실행하고 두 노드 중 하나라도 유효하지 않은 경우 예외를 발생시킵니다. 이 메소드에 전달되는 매개변수는 다음과 같습니다

1. **startNode** 및 **endNode**. 처음 두 매개변수는 각각 콘텐츠 추출이 시작되고 끝나는 위치를 정의하는 노드입니다. 이러한 노드는 블록 수준([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 또는 인라인 수준(예: [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) 등))일 수 있습니다
   1. 필드를 전달하려면 해당 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 객체를 전달해야 합니다.
   1. 북마크를 전달하려면 [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) 및 [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) 노드를 전달해야 합니다.
   1. 코멘트를 전달하려면 [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) 및 [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) 노드를 사용해야 합니다.
1. **포함됨**. 마커가 추출에 포함되는지 여부를 정의합니다. 이 옵션이 false로 설정되고 동일한 노드 또는 연속 노드가 전달되면 빈 목록이 반환됩니다
   1. [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 노드가 전달되면 이 옵션은 전체 필드를 포함할지 아니면 제외할지 정의합니다.
   1. [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) 또는 [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) 노드가 전달되는 경우 이 옵션은 북마크가 포함되는지 아니면 북마크 범위 사이의 콘텐츠만 포함되는지 정의합니다.
   1. [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) 또는 [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) 노드가 전달되는 경우 이 옵션은 주석 자체를 포함할지 아니면 주석 범위의 내용만 포함할지 정의합니다.

**추출_내용** 메소드의 구현은 [여기](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py)를 찾을 수 있습니다. 이 방법은 이 문서의 시나리오에서 참조됩니다.

또한 추출된 노드에서 문서를 쉽게 생성할 수 있는 사용자 정의 방법도 정의하겠습니다. 이 방법은 아래의 많은 시나리오에서 사용되며 단순히 새 문서를 만들고 추출된 콘텐츠를 해당 문서로 가져옵니다.

다음 코드 예제에서는 노드 목록을 가져와 새 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## 단락 사이의 내용 추출

이는 위의 방법을 사용하여 특정 단락 사이의 콘텐츠를 추출하는 방법을 보여줍니다. 이 경우 문서의 전반부에서 발견된 편지의 본문을 추출하려고 합니다. 7~11번째 문단 사이임을 알 수 있습니다.

아래 코드는 이 작업을 수행합니다. 문서에서 [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) 메소드를 사용하고 지정된 색인을 전달하여 적절한 단락을 추출합니다. 그런 다음 이러한 노드를 **추출_내용** 메서드에 전달하고 해당 노드가 추출에 포함되도록 명시합니다. 이 메서드는 이러한 노드 사이에 복사된 콘텐츠를 반환한 다음 새 문서에 삽입합니다.

다음 코드 예제는 위의 **추출_내용** 메서드를 사용하여 특정 단락 사이의 내용을 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 다양한 유형의 노드 간 콘텐츠 추출

블록 수준 또는 인라인 노드의 모든 조합 간에 콘텐츠를 추출할 수 있습니다. 아래 시나리오에서는 첫 번째 단락과 두 번째 섹션의 표 사이의 내용을 포함하여 추출합니다. 적절한 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 및 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 노드를 검색하기 위해 문서의 두 번째 섹션에서 [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) 및 [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) 메서드를 호출하여 마커 노드를 얻습니다. 약간의 변형을 위해 콘텐츠를 복제하고 원본 아래에 삽입해 보겠습니다.

다음 코드 예제에서는 **추출_내용** 메서드를 사용하여 단락과 표 사이의 콘텐츠를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 스타일을 기반으로 단락 사이의 내용 추출

제목 스타일로 표시된 단락 사이와 같이 동일하거나 다른 스타일의 단락 사이에서 콘텐츠를 추출해야 할 수도 있습니다.

아래 코드는 이를 달성하는 방법을 보여줍니다. 제목도 추출하지 않고 "제목 1"과 "제목 3" 스타일의 첫 번째 인스턴스 사이의 내용을 추출하는 간단한 예입니다. 이를 위해 마커 노드가 포함되지 않도록 지정하는 마지막 매개변수를 false로 설정합니다.

적절한 구현에서는 문서에서 이러한 스타일의 모든 단락 사이의 콘텐츠를 추출하기 위해 루프에서 실행되어야 합니다. 추출된 콘텐츠가 새 문서에 복사됩니다.

다음 코드 예제에서는 **추출_내용** 메서드를 사용하여 특정 스타일이 있는 단락 사이의 콘텐츠를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 특정 실행 간 콘텐츠 추출

[Run](https://reference.aspose.com/words/python-net/aspose.words/run/)와 같은 인라인 노드 사이에서도 콘텐츠를 추출할 수 있습니다. 다른 단락의 실행은 마커로 전달될 수 있습니다. 아래 코드는 동일한 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 노드 사이에서 특정 텍스트를 추출하는 방법을 보여줍니다.

다음 코드 예제에서는 **추출_내용** 메서드를 사용하여 동일한 단락의 특정 실행 사이에서 콘텐츠를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 필드를 사용하여 콘텐츠 추출

필드를 마커로 사용하려면 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 노드를 전달해야 합니다. **추출_내용** 메소드의 마지막 매개변수는 전체 필드를 포함할지 여부를 정의합니다. "FullName" 병합 필드와 문서의 단락 사이의 내용을 추출해 보겠습니다. 우리는 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스의 [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) 방식을 사용합니다. 그러면 전달된 병합 필드의 이름에서 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 노드가 반환됩니다.

우리의 경우 **추출_내용** 메소드에 전달된 마지막 매개변수를 `False`로 설정하여 추출에서 필드를 제외하겠습니다. 추출된 콘텐츠를 PDF로 렌더링합니다.

다음 코드 예제에서는 **추출_내용** 메서드를 사용하여 문서의 특정 필드와 단락 사이의 콘텐츠를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 북마크에서 콘텐츠 추출

문서에서 책갈피 내에 정의된 콘텐츠는 [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) 및 [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) 노드로 캡슐화됩니다. 이 두 노드 사이에 있는 콘텐츠가 책갈피를 구성합니다. 시작 마커가 문서의 종료 마커 앞에 나타나는 한 이러한 노드 중 하나를 마커로 전달할 수 있습니다. 다른 책갈피의 노드라도 전달할 수 있습니다. 아래 코드를 사용하여 이 콘텐츠를 새 문서로 추출합니다. **포함됨** 매개변수 옵션은 책갈피를 유지하거나 삭제하는 방법을 보여줍니다.

다음 코드 예제에서는 **추출_내용** 메서드를 사용하여 북마크를 참조하는 콘텐츠를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 댓글에서 콘텐츠 추출

주석은 [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) 및 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 노드로 구성됩니다. 이 노드는 모두 인라인입니다. 처음 두 노드는 아래 스크린샷에 표시된 것처럼 주석이 참조하는 문서의 콘텐츠를 캡슐화합니다. [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 노드 자체는 단락과 실행을 포함할 수 있는 [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/)입니다. 리뷰 창에 댓글 풍선으로 표시되는 댓글의 메시지를 나타냅니다. 이 노드는 인라인이고 본문의 하위 항목이므로 이 메시지 내부에서도 콘텐츠를 추출할 수도 있습니다.

주석은 제목, 첫 번째 단락 및 두 번째 섹션의 표를 캡슐화합니다. 이 주석을 새 문서로 추출해 보겠습니다. **포함됨** 옵션은 주석 자체를 유지할 것인지 아니면 삭제할 것인지를 지정합니다.

다음 코드 예제에서는 이를 수행하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 텍스트만 추출하는 방법

문서에서 텍스트를 검색하는 방법은 다음과 같습니다

- [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)를 사용하여 일반 텍스트로 파일이나 스트림에 저장
- [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/)를 사용하고 [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) 매개변수를 전달합니다. 내부적으로 이는 메모리 스트림에 텍스트로 저장을 호출하고 결과 문자열을 반환합니다
- [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/)를 사용하여 필드 코드를 포함한 모든 Microsoft Word 제어 문자가 포함된 텍스트를 검색합니다

### Node.get_text 및 Node.to_string 사용

Word 문서에는 필드, 셀 끝, 섹션 끝 등과 같은 특수 요소를 지정하는 제어 문자가 포함될 수 있습니다. 가능한 Word 제어 문자의 전체 목록은 [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) 클래스에 정의되어 있습니다. [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) 메서드는 노드에 있는 모든 제어 문자가 포함된 텍스트를 반환합니다.

[to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/)를 호출하면 제어 문자 없이 문서의 일반 텍스트 표현만 반환됩니다. 일반 텍스트로 내보내기에 대한 자세한 내용은 [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) 사용을 참조하세요

다음 코드 예제는 노드에서 [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) 및 [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) 메서드 호출 간의 차이점을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### `SaveFormat.Text` 사용

이 예에서는 문서를 다음과 같이 저장합니다

- 필드 문자 및 필드 코드, 도형, 각주, 미주 및 주석 참조를 필터링합니다
- 단락 끝 **ControlChar.Cr** 문자를 **ControlChar.CrLf** 조합으로 바꿉니다
- UTF8 인코딩을 사용합니다

다음 코드 예제에서는 문서를 TXT 형식으로 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## 도형에서 이미지 추출

일부 작업을 수행하려면 문서 이미지를 추출해야 할 수도 있습니다. Aspose.Words를 사용하면 이 작업도 수행할 수 있습니다.

다음 코드 예제에서는 문서에서 이미지를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
