---
title: 댓글 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 댓글 작업
linktitle: 댓글 작업
description: "다음을 사용하여 주석 작업 C++."
type: docs
weight: 260
url: /ko/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**온라인 시도**

당신은 우리의 이 기능을 시도할 수 있습니다 [무료 온라인 주석 제거](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words 사용자가 주석–문서의 주석으로 작업 할 수 있습니다. Aspose.Words 이 숫자는 [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) 수업 또한 사용 [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) 그리고 [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) 주석과 연결되어야 하는 텍스트 영역을 지정하는 클래스입니다.

## 댓글 추가

Aspose.Words 여러 가지 방법으로 주석을 추가 할 수 있습니다:

1. 를 사용하여 [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) 클래스
2. 를 사용하여 [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) 그리고 [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) 수업

다음 코드 예제에서는 다음을 사용하여 단락에 주석을 추가하는 방법을 보여 줍니다 **Comment** 클래스:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

다음 코드 예제에서는 텍스트 영역과 텍스트 영역을 사용하여 단락에 주석을 추가하는 방법을 보여 줍니다. **CommentRangeStart** 그리고 **CommentRangeEnd** 수업:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## 댓글 추출 또는 제거

워드 문서에서 주석을 사용하는 것은(변경 사항 추적 외에도)문서를 검토할 때,특히 검토자가 여러 명인 경우 일반적인 관행입니다. 당신이 문서에서 필요로하는 유일한 것은 주석입니다 상황이있을 수 있습니다. 당신이 검토 결과의 목록을 생성 할 말,또는 아마도 당신은 문서에서 모든 유용한 정보를 수집하고 당신은 단순히 불필요한 의견을 제거 할 수 있습니다. 특정 검토자의 주석을 보거나 제거할 수 있습니다.

이 샘플에서는 문서 내의 주석에서 정보를 수집하고 문서에서 주석을 제거하는 몇 가지 간단한 방법을 살펴볼 것입니다. 특히,우리는 방법을 다룰 것입니다:

- 문서 또는 특정 저자에 의해 만들어진 사람에서 모든 의견을 추출합니다.
- 문서 또는 특정 작성자의 모든 주석을 제거합니다.

### 댓글 추출 또는 제거 방법

이 샘플의 코드는 실제로 매우 간단하며 모든 방법은 동일한 접근 방식을 기반으로합니다. 단어 문서의 주석은 [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) 객체 Aspose.Words 문서 개체 모델. 문서의 모든 주석을 수집하려면 [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) 첫 번째 매개 변수가 로 설정된 메서드 [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). 두 번째 매개 변수가 **GetChildNodes** 메서드가 참으로 설정되어 있습니다. **GetChildNodes** 즉각적인 자식만 수집하는 대신 모든 자식 노드에서 재귀적으로 선택합니다.

문서에서 주석을 추출하고 제거하는 방법을 설명하기 위해 다음 단계를 수행합니다:

1. 를 사용하여 워드 문서 열기 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 클래스
1. 문서의 모든 주석을 컬렉션으로 가져오기
1. 댓글을 추출하려면:
   1. 각 연산자를 사용하여 컬렉션을 살펴보십시오
   1. 모든 댓글의 저자 이름,날짜 및 시간 및 텍스트를 추출하고 나열합니다.
   1. 특정 저자가 작성한 저자 이름,날짜 및 시간 및 주석 텍스트를 추출하고 나열합니다.
1. 댓글을 제거하려면:
   1. 연산자를 사용하여 컬렉션을 뒤로 이동합니다
   1. 댓글 제거
1. 변경 사항 저장

### 모든 주석을 추출하는 방법

그 **GetChildNodes** 방법은 매우 유용하며 모든 유형의 문서 노드 목록을 가져올 때마다 사용할 수 있습니다. 노드는 항목을 열거하거나 액세스하는 경우에만 이 컬렉션에 선택되므로 결과 컬렉션에서는 즉각적인 오버헤드가 발생하지 않습니다.

다음 코드 예제에서는 문서의 모든 주석의 작성자 이름,날짜 및 시간 및 텍스트를 추출하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### 지정된 저자의 주석을 추출하는 방법

컬렉션에 주석 노드를 선택한 후에는 필요한 정보를 추출하기만 하면 됩니다. 이 샘플에서는 작성자 이니셜,날짜,시간 및 주석의 일반 텍스트가 하나의 문자열로 결합되어 대신 다른 방법으로 저장할 수 있습니다.

특정 작성자의 주석을 추출하는 오버로드된 방법은 거의 동일합니다.그것은 단지 배열에 정보를 추가하기 전에 작성자의 이름을 확인합니다.

다음 코드 예제에서는 지정된 작성자가 작성자 이름,날짜 및 시간 및 주석 텍스트를 추출하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### 댓글을 제거하는 방법

모든 주석을 제거하는 경우 주석을 하나씩 삭제하는 컬렉션을 이동할 필요가 없습니다. `NodeCollection.Clear` 댓글 컬렉션에.

다음 코드 예제에서는 문서의 모든 주석을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

주석을 선택적으로 제거해야 할 때 프로세스는 주석 추출에 사용한 코드와 더 유사해집니다.

다음 코드 예제에서는 지정된 작성자의 주석을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

여기서 강조해야 할 주요 포인트는 연산자를 사용하는 것입니다. 간단한 추출과는 달리,여기에 당신은 코멘트를 삭제하려면. 적절한 트릭은 컬렉션을 마지막 댓글에서 첫 번째 댓글로 거꾸로 반복하는 것입니다. 그 이유는 끝에서 시작하여 뒤로 이동하면 이전 항목의 인덱스가 변경되지 않고 컬렉션의 첫 번째 항목으로 돌아갈 수 있습니다.

다음 코드 예제에서는 주석 추출 및 제거 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 사이 주석을 제거하는 방법 CommentRangeStart 그리고 CommentRangeEnd

사용 Aspose.Words 당신은 또한 사이에 주석을 제거 할 수 있습니다 **CommentRangeStart** 그리고 **CommentRangeEnd** 노드

다음 코드 예제에서는 다음 사이의 텍스트를 제거하는 방법을 보여 줍니다 **CommentRangeStart** 그리고 **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## 댓글의 답글 추가 및 제거

그 [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) 메서드는 이 댓글에 응답을 추가합니다. 기존에 있기 때문에 양해 바랍니다 Microsoft 사무실 제한 만 1 문서에서 회신 수준이 허용됩니다. 유형의 예외 *InvalidOperationException* 이 메서드가 기존 회신 주석에서 호출되면 발생합니다.

당신은 사용할 수 있습니다 [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) 이 주석에 지정된 응답을 제거하는 방법.

다음 코드 예제에서는 댓글에 답장을 추가하고 댓글의 답장을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## 댓글의 답장 읽기

그 [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) 속성은 다음과 같은 컬렉션을 반환합니다 **Comment** 지정된 주석의 직계 자식인 개체입니다.

다음 코드 예제에서는 주석의 응답을 반복하여 해결하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
