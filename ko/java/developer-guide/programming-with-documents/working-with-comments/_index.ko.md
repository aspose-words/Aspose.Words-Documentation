---
title: Java의 댓글 작업
second_title: Aspose.WordsJava
articleTitle: 댓글 작업
linktitle: 댓글 작업
description: "Java을 사용하여 주석 작업."
type: docs
weight: 260
url: /ko/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**온라인 시도**

당신은 우리의 이 기능을 시도할 수 있습니다 [무료 온라인 주석 제거](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words사용자가 주석으로 작업할 수 있도록 허용–Aspose.Words문서의 주석은[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)클래스로 표시됩니다. 또한[CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)및[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)클래스를 사용하여 주석과 연결해야 하는 텍스트 영역을 지정합니다.

## 댓글 추가

Aspose.Words여러 가지 방법으로 주석을 추가할 수 있습니다:

1. [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)클래스 사용
2. [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)및[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)클래스 사용

다음 코드 예제에서는**Comment**클래스를 사용하여 단락에 주석을 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

다음 코드 예제에서는 텍스트 영역과**CommentRangeStart**및**CommentRangeEnd**클래스를 사용하여 단락에 주석을 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## 댓글 추출 또는 제거

워드 문서에서 주석을 사용하는 것은(변경 사항 추적 외에도)문서를 검토할 때,특히 검토자가 여러 명인 경우 일반적인 관행입니다. 당신이 문서에서 필요로하는 유일한 것은 주석입니다 상황이있을 수 있습니다. 당신이 검토 결과의 목록을 생성 할 말,또는 아마도 당신은 문서에서 모든 유용한 정보를 수집하고 당신은 단순히 불필요한 의견을 제거 할 수 있습니다. 특정 검토자의 주석을 보거나 제거할 수 있습니다.

이 샘플에서는 문서 내의 주석에서 정보를 수집하고 문서에서 주석을 제거하는 몇 가지 간단한 방법을 살펴볼 것입니다. 특히,우리는 방법을 다룰 것입니다:

- 문서 또는 특정 저자에 의해 만들어진 사람에서 모든 의견을 추출합니다.
- 문서 또는 특정 작성자의 모든 주석을 제거합니다.

### 댓글 추출 또는 제거 방법

이 샘플의 코드는 매우 간단하며 모든 메서드는 동일한 접근 방식을 기반으로 합니다. Word 문서의 주석은 Aspose.Words 문서 개체 모델의 `Comment` 개체로 표현됩니다. 문서의 모든 주석을 수집하려면 첫 번째 매개변수를 `NodeType.Comment`로 설정한 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 메서드를 사용합니다. **getChildNodes** 메서드의 두 번째 매개변수가 true로 설정되어 있는지 확인합니다. 이렇게 하면 **getChildNodes**가 즉각적인 자식만 수집하는 것이 아니라 모든 자식 노드에서 재귀적으로 선택하도록 강제합니다.

문서에서 주석을 추출하고 제거하는 방법을 설명하기 위해 다음 단계를 수행합니다:

1. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)클래스를 사용하여 단어 문서 열기
1. 문서의 모든 주석을 컬렉션으로 가져오기
1. 댓글을 추출하려면:
   1. 연산자를 사용하여 컬렉션을 통해 이동
   1. 모든 댓글의 저자 이름,날짜 및 시간 및 텍스트를 추출하고 나열합니다.
   1. 특정 저자가 작성한 저자 이름,날짜 및 시간 및 주석 텍스트를 추출하고 나열합니다.
1. 댓글을 제거하려면:
   1. 연산자를 사용하여 컬렉션을 뒤로 이동합니다
   1. 댓글 제거
1. 변경 사항을 저장합니다.

우리는 이 운동을 위해 뒤에 오는 낱말 문서를 사용하기 위하여 려고 하고 있다:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

당신이 볼 수 있듯이,그것은 이니셜"오후"와"케이"와 두 저자의 몇 가지 의견이 포함되어 있습니다.

### 모든 주석을 추출하는 방법

[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)방법은 매우 유용하며 모든 유형의 문서 노드 목록을 가져올 때마다 사용할 수 있습니다. 노드는 항목을 열거하거나 액세스하는 경우에만 이 컬렉션에 선택되므로 결과 컬렉션에서는 즉각적인 오버헤드가 발생하지 않습니다.

다음 코드 예제에서는 문서의 모든 주석의 작성자 이름,날짜 및 시간 및 텍스트를 추출하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### 지정된 저자의 주석을 추출하는 방법

컬렉션에 주석 노드를 선택한 후에는 필요한 정보를 추출하기만 하면 됩니다. 이 샘플에서는 저자의 이니셜,날짜,시간 및 주석의 일반 텍스트가 하나의 문자열로 결합되어 대신 다른 방법으로 저장할 수 있습니다.

특정 작성자의 주석을 추출하는 오버로드된 방법은 거의 동일합니다.그것은 단지 배열에 정보를 추가하기 전에 작성자의 이름을 확인합니다.

다음 코드 예제에서는 지정된 작성자가 작성자 이름,날짜 및 시간 및 주석 텍스트를 추출하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### 댓글을 제거하는 방법

모든 주석을 제거하는 경우 컬렉션을 하나하나 삭제하면서 주석을 제거할 필요가 없습니다. 주석 컬렉션에서 [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear)을 호출하여 주석을 제거할 수 있습니다.

다음 코드 예제에서는 문서의 모든 주석을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

주석을 선택적으로 제거해야 할 때 프로세스는 주석 추출에 사용한 코드와 더 유사해집니다.

다음 코드 예제에서는 지정된 작성자의 주석을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

여기서 강조해야 할 주요 포인트는 연산자를 사용하는 것입니다. 간단한 추출과는 달리,여기에 당신은 코멘트를 삭제하려면. 적절한 트릭은 컬렉션을 마지막 댓글에서 첫 번째 댓글로 거꾸로 반복하는 것입니다. 그 이유는 끝에서 시작하여 뒤로 이동하면 이전 항목의 인덱스가 변경되지 않고 컬렉션의 첫 번째 항목으로 돌아갈 수 있습니다.

다음 코드 예제에서는 주석 추출 및 제거 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

시작할 때 샘플은 다음 결과를 표시합니다. 먼저 모든 작성자의 모든 주석을 나열한 다음 선택한 작성자의 주석만 나열합니다. 마지막으로 코드는 모든 주석을 제거합니다.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

출력 워드 문서는 이제 그것에서 제거 주석이있다:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### CommentRangeStart과CommentRangeEnd사이의 텍스트를 제거하는 방법

Aspose.Words를 사용하면CommentRangeStart과CommentRangeEnd노드 사이의 주석을 제거할 수도 있습니다.

다음 코드 예제에서는CommentRangeStart과CommentRangeEnd사이의 텍스트를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## 댓글의 답장 추가 또는 제거

[addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String)메서드는 이 주석에 응답을 추가합니다. 기존MS사무실 제한으로 인해 문서에 하나의(1)수준의 응답 만 허용됩니다. 기존 회신 주석에서 이 메서드를 호출하면InvalidOperationException유형의 예외가 발생합니다.

[removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment)메서드를 사용하여 이 주석에 대한 지정된 응답을 제거할 수 있습니다.

다음 코드 예제에서는 주석에 회신을 추가하고 주석의 회신을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## 댓글의 답장 읽기

Aspose.Words지원 댓글의 응답을 읽을 수 있습니다. [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies)속성은 지정된 주석의 직계 자식인[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)개체의 컬렉션을 반환합니다.

다음 코드 예제에서는 주석의 응답을 반복하여 해결하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
