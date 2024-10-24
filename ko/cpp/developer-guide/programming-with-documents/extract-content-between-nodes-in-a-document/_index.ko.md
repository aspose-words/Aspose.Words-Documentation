---
title: 문서 노드 간에 콘텐츠를 추출하는 방법
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서의 노드 간 콘텐츠 추출
linktitle: 노드 간 콘텐츠 추출
type: docs
description: "다른 사용하여 문서 내용 추출 C++."
weight: 140
url: /ko/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
---

문서 작업을 할 때는 문서 내의 특정 범위에서 콘텐츠를 쉽게 추출할 수 있어야 합니다. 그러나 내용은 단락,표,이미지 등과 같은 복잡한 요소로 구성 될 수 있습니다.

어떤 콘텐츠를 추출해야 하는지에 관계없이,그 콘텐츠를 추출하는 방법은 항상 어떤 노드가 콘텐츠를 추출하도록 선택되는지에 따라 결정됩니다. 전체 텍스트 본문 또는 간단한 텍스트 실행이 될 수 있습니다.

가능한 많은 상황이 있으므로 콘텐츠를 추출 할 때 고려해야 할 다양한 노드 유형이 있습니다. 예를 들어,다음 간의 콘텐츠를 추출할 수 있습니다:

- 두 가지 특정 단락
- 특정 텍스트 실행
- 병합 필드와 같은 다양한 유형의 필드
- 책갈피 또는 주석의 시작 및 종료 범위
- 별도의 섹션에 포함 된 다양한 텍스트 본문

경우에 따라 단락과 필드 사이 또는 실행과 책갈피 사이의 콘텐츠 추출과 같은 다른 노드 유형을 결합해야 할 수도 있습니다.

이 문서에서는 서로 다른 노드 간에 텍스트를 추출하기 위한 코드 구현과 일반적인 시나리오의 예를 제공합니다.

{{% alert color="primary" %}}

이 예들은 많은 가능성의 몇 가지 시연 일뿐입니다. 우리는 텍스트 추출 기능이 대중의 일부가 될 계획입니다 API 미래에는 추가 코드가 필요하지 않습니다. 그 동안,이 기능에 대한 귀하의 요청을 게시 주시기 바랍니다 [Aspose.Words 포럼](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## 콘텐츠 추출 이유

종종 콘텐츠를 추출하는 목표는 복제하거나 새 문서에 별도로 저장하는 것입니다. 예를 들어 콘텐츠를 추출하고:

- 별도의 문서로 복사
- 문서의 특정 부분을 PDF 또는 이미지
- 문서의 내용을 여러 번 복제
- 문서의 나머지 부분과 별도로 추출된 내용으로 작업

이것은 다음을 사용하여 쉽게 달성 할 수 있습니다 Aspose.Words 그리고 아래의 코드 구현.

## 콘텐츠 알고리즘 추출

이 섹션의 코드는 위에서 설명한 모든 가능한 상황을 하나의 일반화되고 재사용 가능한 방법으로 해결합니다. 이 기법의 일반적인 개요는:

1. 문서에서 추출할 콘텐츠 영역을 지정하는 노드를 수집합니다. 이러한 노드를 검색하는 것은 사용자가 추출하려는 것을 기반으로 코드에서 처리합니다.
1. 이 노드를 **ExtractContent** 아래에 제공된 방법. 또한 마커 역할을 하는 이러한 노드가 추출에 포함되어야 하는지 여부를 나타내는 부울 매개 변수를 전달해야 합니다.
1. 추출하도록 지정된 복제된 콘텐츠(복사된 노드)목록을 검색합니다. 이 노드 목록을 적용 가능한 모든 방법으로 사용할 수 있습니다(예:선택한 콘텐츠만 포함하는 새 문서 만들기).

## 콘텐츠 추출 방법

문서의 내용을 추출하려면 다음을 호출해야 합니다 `ExtractContent` 아래의 방법과 적절한 매개 변수를 전달합니다. 이 방법의 기본 기본은 블록 레벨 노드(단락 및 테이블)를 찾고 동일한 복사본을 만들기 위해 복제하는 것입니다. 만약 전달된 마커 노드가 블록 수준이라면,그 방법은 단순히 그 수준의 콘텐츠를 복사하고 배열에 추가할 수 있습니다.

그러나,마커 노드가 인라인(항의 자식)이라면,상황이 더 복잡해집니다.인라인 노드에서 단락을 분할해야 하기 때문에,실행,북마크 필드 등이 필요합니다. 마커 사이에 없는 복제된 부모 노드의 콘텐츠가 제거됩니다. 이 프로세스는 인라인 노드가 여전히 상위 단락의 서식을 유지하도록하는 데 사용됩니다. 이 메서드는 또한 매개 변수로 전달된 노드에 대한 검사를 실행하고 두 노드 중 하나가 유효하지 않은 경우 예외를 발생시킵니다. 이 메서드에 전달되는 매개 변수는 다음과 같습니다:

1. **StartNode** 그리고 **EndNode**. 첫 번째 두 매개 변수는 콘텐츠의 추출이 각각 시작되고 끝나는 곳을 정의하는 노드입니다. 이러한 노드는 블록 수준(단락,테이블)또는 인라인 수준(예:실행)일 수 있습니다, FieldStart, BookmarkStart 그 밖의):
   1. 필드를 통과하려면 해당 필드를 통과해야 합니다. **FieldStart** 객체
   1. 북마크를 전달하려면 **BookmarkStart** 그리고 BookmarkEnd 노드가 전달되어야합니다.
   1. 의견을 전달하려면 CommentRangeStart 그리고 CommentRangeEnd 노드를 사용해야 합니다.
1. **IsInclusive**. 마커가 추출에 포함되는지 여부를 정의합니다. 이 옵션이 거짓으로 설정되어 있고 동일한 노드 또는 연속 노드가 전달되면 빈 목록이 반환됩니다:

      1. 만약 **FieldStart** 이 옵션은 전체 필드를 포함하거나 제외할지 여부를 정의합니다.
      1. 만약 **BookmarkStart** 또는 **BookmarkEnd** 노드가 전달되면 이 옵션은 책갈피가 포함되어 있는지 아니면 책갈피 범위 사이의 내용만 포함하는지 정의합니다.
      1. 만약 **CommentRangeStart** 또는 **CommentRangeEnd** 노드가 전달되면,이 옵션은 주석 자체가 포함되어야 하는지 아니면 주석 범위의 내용만 포함되어야 하는지 정의합니다.

의 구현 **ExtractContent** 찾을 수있는 방법 [여기](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). 이 메서드는 이 문서의 시나리오에서 설명합니다.

또한 추출 된 노드에서 문서를 쉽게 생성 할 수있는 사용자 정의 방법을 정의합니다. 이 방법은 아래의 많은 시나리오에서 사용되며 단순히 새 문서를 만들고 추출된 내용을 가져옵니다.

다음 코드 예제에서는 노드 목록을 가져와 새 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## 단락 간 내용 추출

이것은 위의 방법을 사용하여 특정 단락 사이의 내용을 추출하는 방법을 보여줍니다. 이 경우,우리는 문서의 전반부에있는 편지의 본문을 추출 할 수 있습니다. 우리는 이것이 7번째 및 11 단락.

아래 코드는 이 작업을 수행합니다. 적절한 단락은 [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) 문서에 메서드를 지정하고 지정된 인덱스를 전달합니다. 우리는 이 노드를 **ExtractContent** 추출에 포함되어야 한다고 명시하고 있습니다. 이 메서드는 이러한 노드 간에 복사된 콘텐츠를 반환한 다음 새 문서에 삽입합니다.

다음 코드 예제에서는 다음을 사용하여 특정 단락 간의 내용을 추출하는 방법을 보여 줍니다 `ExtractContent` 위의 방법:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## 다른 유형의 노드 간에 콘텐츠 추출

블록 수준 또는 인라인 노드의 모든 조합간에 콘텐츠를 추출 할 수 있습니다. 아래의 이 시나리오에서는 첫 번째 단락과 두 번째 섹션의 표 사이의 내용을 포괄적으로 추출합니다. 우리는 호출하여 마커 노드를 얻습니다. `Body.FirstParagraph` 그리고 [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) 문서의 두 번째 섹션에서 적절한 단락 및 테이블 노드를 검색하는 방법. 약간의 변화를 위해 대신 내용을 복제하고 원본 아래에 삽입 할 수 있습니다.

다음 코드 예제에서는 다음을 사용하여 단락과 테이블 간의 내용을 추출하는 방법을 보여 줍니다 `ExtractContent` 방법:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## 스타일에 따라 단락 간의 내용 추출

제목 스타일로 표시된 단락 간과 같이 동일하거나 다른 스타일의 단락 간 내용을 추출해야 할 수 있습니다. 아래 코드는 이를 달성하는 방법을 보여줍니다. "헤딩"의 첫 번째 인스턴스 사이의 내용을 추출하는 간단한 예입니다. 1"와"헤더 3"라는 제목도 빼지 않고 스타일링합니다. 이를 위해 마지막 매개 변수를 거짓으로 설정합니다.이 매개 변수는 마커 노드가 포함되지 않도록 지정합니다.

적절한 구현에서,이것은 문서에서 이러한 스타일의 모든 단락 사이의 내용을 추출하기 위해 루프에서 실행되어야합니다. 추출된 콘텐츠가 새 문서에 복사됩니다.

다음 코드 예제에서는 특정 스타일을 사용하여 단락 간에 콘텐츠를 추출하는 방법을 보여 줍니다 `ExtractContent` 방법:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## 특정 실행 간에 콘텐츠 추출

다음과 같은 인라인 노드 간에 콘텐츠를 추출할 수 있습니다 [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) 또한. **Runs** 다른 단락에서 마커로 전달할 수 있습니다. 아래 코드는 동일한 텍스트 사이의 특정 텍스트를 추출하는 방법을 보여줍니다 **Paragraph** 노드

다음 코드 예제에서는 동일한 단락의 특정 실행 간에 콘텐츠를 추출하는 방법을 보여 줍니다 **ExtractContent** 방법:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## 필드를 사용하여 콘텐츠 추출

필드를 마커로 사용하려면 `FieldStart` 노드가 전달되어야합니다. 마지막 매개 변수는 `ExtractContent` 메서드는 전체 필드를 포함할지 여부를 정의합니다. 의 사이의 내용을 추출 할 수 있습니다"FullName"필드와 문서의 단락을 병합합니다. 우리는 사용 [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) 방법 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 수업 이 반환됩니다 **FieldStart** 병합 필드의 이름에서 노드가 전달되었습니다.

우리의 경우 전달 된 마지막 매개 변수를 설정 하자 **ExtractContent** 추출에서 필드를 제외하려면 거짓 방법. 우리는 추출된 콘텐츠를 PDF.

다음 코드 예제에서는 다음 코드를 사용하여 문서의 특정 필드와 단락 간에 콘텐츠를 추출하는 방법을 보여 줍니다 **ExtractContent** 방법:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## 책갈피에서 콘텐츠 추출

문서에서 책갈피 내에 정의된 내용은 다음과 같이 캡슐화됩니다 `BookmarkStart` 그리고 BookmarkEnd 노드 이 두 노드 사이에 있는 콘텐츠가 책갈피를 구성합니다. 문서의 끝 마커 앞에 시작 마커가 나타나는 한 이러한 노드 중 하나를 다른 책갈피의 마커로 전달할 수 있습니다. 아래 코드를 사용하여 이 콘텐츠를 새 문서로 추출합니다. 그 **IsInclusive** 매개 변수 옵션은 책갈피를 유지하거나 삭제하는 방법을 보여줍니다.

다음 코드 예제에서는 책갈피를 사용하여 참조된 콘텐츠를 추출하는 방법을 보여 줍니다 **ExtractContent** 방법:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## 댓글에서 콘텐츠 추출

댓글은 CommentRangeStart, CommentRangeEnd 그리고 코멘트 노드. 이 모든 노드는 인라인입니다. 첫 번째 두 노드는 아래 스크린샷에서 볼 수 있듯이 코멘트에서 참조하는 문서의 내용을 캡슐화합니다.

그 **Comment** 노드 자체는 InlineStory 단락 및 실행을 포함 할 수 있습니다. 미리 보기 창에서 주석 거품으로 표시되는 주석의 메시지를 나타냅니다. 이 노드는 인라인 및 본문의 자손으로 당신은 또한뿐만 아니라이 메시지 내부의 내용을 추출 할 수 있습니다.

주석은 제목,첫 번째 단락 및 두 번째 섹션의 테이블을 캡슐화합니다. 이 주석을 새 문서로 추출해 보겠습니다. 그 **IsInclusive** 주석 자체가 유지 또는 폐기되는 경우 옵션 지시.

다음 코드 예제에서는 이 작업을 수행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## 다음을 사용하여 콘텐츠를 추출하는 방법 DocumentVisitor

사용 [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) 이 사용 시나리오를 구현하는 클래스입니다. 이 클래스는 잘 알려진 방문자 디자인 패턴에 해당합니다. 함께 **DocumentVisitor,** 문서 트리에 대한 열거가 필요한 사용자 지정 작업을 정의하고 실행할 수 있습니다.

**DocumentVisitor**

각 **DocumentVisitor.VisitXXX** 메소드는 [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) 노드 열거를 제어하는 값입니다. 열거형을 계속하거나,현재 노드를 건너뛰거나(열거형을 계속),노드 열거형을 중지하도록 요청할 수 있습니다.

다음은 문서의 여러 부분을 프로그래밍 방식으로 결정하고 추출하기 위해 따라야 할 단계입니다:

- 다음에서 파생된 클래스 만들기 **DocumentVisitor**
- 일부 또는 전부에 대한 구현을 재정의하고 제공합니다. **DocumentVisitor.VisitXXX** 일부 사용자 지정 작업을 수행하는 방법
- 전화 `Node.Accept` 열거형을 시작할 노드에서 예를 들어 전체 문서를 열거하려면 다음을 사용합니다 `Document.Accept`

**DocumentVisitor**

이 예제에서는 방문자 패턴을 사용하여 새 작업을 추가하는 방법을 보여 줍니다 Aspose.Words 개체 모델. 이 경우 간단한 문서 변환기를 텍스트 형식으로 만듭니다:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 텍스트 만 추출하는 방법

문서에서 텍스트를 검색하는 방법은 다음과 같습니다:

- 사용 [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 함께 [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) 파일 또는 스트림에 일반 텍스트로 저장하려면
- 사용 [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) 그리고 통과 **SaveFormat.Text** 매개 변수 내부적으로,이 메모리 스트림에 텍스트로 저장을 호출하고 결과 문자열을 반환합니다
- 사용 [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) 모두와 함께 텍스트를 검색하려면 Microsoft Word 필드 코드를 포함한 제어 문자
- 사용자 지정 구현 [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) 사용자 정의 추출을 수행하려면

### 사용 `Node.GetText` 그리고 `Node.ToString`

워드 문서에는 필드,셀 끝,섹션 끝 등과 같은 특수 요소를 지정하는 제어 문자가 포함될 수 있습니다. 가능한 단어 제어 문자의 전체 목록은 [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) 수업 그 **Node.GetText** 메서드는 노드에 있는 모든 컨트롤 문자 문자가 있는 텍스트를 반환합니다.

전화 **ToString** 컨트롤 문자 없이 문서의 일반 텍스트 표현만 반환합니다.

다음 코드 예제에서는 호출 간의 차이점을 보여 줍니다 **GetText** 그리고 **ToString** 노드의 메서드:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### 사용 `SaveFormat.Text`

이 예제에서는 다음과 같이 문서를 저장합니다:

- 필드 문자 및 필드 코드,모양,각주,미주 및 주석 참조를 필터링합니다
- 단락의 끝을 대체합니다 **ControlChar.Cr** 캐릭터 **ControlChar.CrLf** 조합
- 용도 UTF8 인코딩

다음 코드 예제에서는 문서를 저장하는 방법을 보여 줍니다 TXT 형식:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## 모양에서 이미지 추출

일부 작업을 수행하려면 문서 이미지를 추출해야 할 수 있습니다. Aspose.Words 당신은뿐만 아니라이 작업을 수행 할 수 있습니다.

다음 코드 예제에서는 문서에서 이미지를 추출하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}