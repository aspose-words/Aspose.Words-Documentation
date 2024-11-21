---
title: 댓글 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 자주 묻는 질문
linktitle: 자주 묻는 질문
description: "자주 묻는 질문 Java·"
type: docs
weight: 260
url: /ko/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**온라인 채팅**

이 기능을 사용해 보세요. [무료 온라인 익명](https://products.aspose.app/words/annotation)·

{{% /alert %}}

Aspose.Words 사용자가 코멘트와 함께 작동 할 수 있습니다 – 문서의 의견 Aspose.Words 본문 바로가기 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 수업. 또한 사용 [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) · [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) 코멘트와 관련된 텍스트의 영역을 지정하는 클래스.

## 자주 묻는 질문

Aspose.Words 몇 가지 방법으로 의견을 추가 할 수 있습니다:

1. 명세 사용 방법 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 수업시간
2. 명세 사용 방법 [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) · [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) 한국어

다음 코드 예제는 단락에 대한 의견을 추가하는 방법을 보여줍니다 **Comment** 종류:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

다음 코드 예제는 텍스트와 단락에 대한 의견을 추가하는 방법을 보여줍니다 **CommentRangeStart** · **CommentRangeEnd** 수업:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## 추출 또는 제거 코멘트

Word 문서에서 코멘트를 사용하여 (변경을 추적하는 것 외에도)는 여러 리뷰어가있을 때 문서를 검토 할 때 일반적인 연습입니다. 문서에서 필요한 유일한 것은 의견이 될 수 있습니다. 리뷰 결과의 목록을 생성하고 싶거나 문서에서 모든 유용한 정보를 수집하고 불필요한 의견을 제거하는 것이 좋습니다. 특정 리뷰 작성자의 의견을 보거나 제거 할 수 있습니다.

이 샘플에서, 우리는 문서 내의 의견에서 정보를 수집하고 문서에서 의견을 제거하기위한 간단한 방법을 살펴 봅니다. 구체적으로, 우리는 방법을 커버할 것입니다:

- 문서의 모든 의견을 추출하거나 특정 저자에 의해 한 것들.
- 문서의 모든 의견이나 특정 저자에서만 제거하십시오.

### 추출 또는 제거 하는 방법

이 샘플의 코드는 매우 간단합니다 모든 방법은 동일한 접근법을 기반으로합니다. Word 문서의 의견은 다음과 같습니다. `Comment` 객체의 Aspose.Words 문서 객체 모델. 문서의 모든 의견 수집하기 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 첫번째 모수 세트를 가진 방법 `NodeType.Comment`· 두 번째 매개 변수가 있는지 확인합니다. **도착ChildNodes** 방법 설정 true: 이 힘 **도착ChildNodes** 모든 아이 노드에서 반복적으로 선택하기 위해, 단지 즉각적인 자녀를 수집하는 것보다.

문서에서 의견을 추출하고 제거하는 방법을 설명하려면 다음 단계를 통해 이동합니다

1. 명세 Word 문서 열기 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 수업시간
1. 명세 문서에서 모든 의견 받기
1. 명세 코멘트를 추출:
   1. 연산자를 사용하여 수집을 통해 이동
   1. 모든 의견의 저자 이름, 날짜 및 시간 및 텍스트를 추출하고 목록
   1. 특정 저자에 의해 작성된 의견의 저자 이름, 날짜 및 시간 및 텍스트를 추출하고 목록, 이 경우, 저자 '크'
1. 명세 댓글을 제거:
   1. 수집을 통해 이동 연산자
   1. 코멘트 제거
1. 명세 자주 묻는 질문

우리는이 운동에 대한 다음 단어 문서를 사용하려고:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

볼 수 있듯이, 그것은 초기 "pm"및 "ks"와 함께 두 개의 저자에서 여러 개의 댓글을 포함합니다.

### 모든 코멘트를 추출하는 방법

더 보기 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 메소드는 매우 유용하며 모든 유형의 문서 노드 목록을 얻을 필요가 있습니다. 결과 수집은 노드가 이 컬렉션으로 선정되기 때문에 즉시 오버 헤드를 만들지 않습니다.

다음 코드 예제는 문서의 모든 의견의 저자 이름, date&time 및 텍스트를 추출하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### 지정된 저자의 코멘트를 추출하는 방법

선택한 코멘트 노드가 수집한 후, 필요한 정보를 추출해야 합니다. 이 샘플에서 저자의 초기, 날짜, 시간 및 주석의 일반 텍스트는 하나의 문자열로 결합됩니다. 대신 다른 방법으로 저장할 수 있습니다.

특정 저자의 코멘트를 추출하는 과부하 된 방법은 거의 동일합니다., 그것은 단지 정보를 배열에 추가하기 전에 저자의 이름을 확인합니다.

다음 코드 예제는 지정된 저자에 의해 댓글의 저자 이름, date&time 및 텍스트를 추출하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### 자주 묻는 질문

당신이 모든 의견 제거 하는 경우, 수집 deleting 코멘트를 통해 이동할 필요가 없습니다 하나; 당신은 호출하여 제거할 수 있습니다 [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) 댓글 수집에.

다음 코드 예제는 문서의 모든 의견을 제거하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

선택적으로 코멘트를 제거 할 필요가있을 때, 프로세스는 우리가 댓글 추출에 사용 된 코드와 더 유사합니다.

다음 코드 예제는 지정된 저자에 의해 의견을 제거하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

여기 강조하는 주요 점은 연산자의 사용입니다. 간단한 추출과 달리, 여기에 당신은 코멘트를 삭제하고 싶습니다. 적당한 트릭은 마지막 Comment에서 첫 번째 것까지 컬렉션을 뒤로 결정하는 것입니다. 결국부터 시작하면 이전 항목의 인덱스가 변경되지 않고 컬렉션의 첫 번째 항목으로 다시 작업을 할 수 있습니다.

다음 코드 예제는 주석 추출 및 제거를위한 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc)·

{{% /alert %}}

시작될 때, 표본은 뒤에 오는 결과를 표시합니다. 첫째, 그것은 모든 저자에 의해 모든 코멘트를 나열, 다음 선택된 저자에 의해 댓글을 나열합니다. 마지막으로, 모든 의견 제거 코드.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

출력 워드 문서는 이제 주석에서 제거:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### CommentRangeStart와 CommentRangeEnd 사이 텍스트를 제거하는 방법

사용 방법 Aspose.Words CommentRangeStart 및 CommentRangeEnd 노드간에 의견을 제거할 수 있습니다.

다음 코드 예제는 CommentRangeStart와 CommentRangeEnd 사이의 텍스트를 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## 코멘트 추가 또는 제거

더 보기 [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) 메소드는 이 댓글에 대한 답변을 추가합니다. 기존의 MS Office 제한으로 인해 문서에 1 레벨의 응답이 허용됩니다. InvalidOperationException 유형의 예외는 이 메소드가 기존의 댓글에 호출되는 경우 제기됩니다.

당신은 사용할 수 있습니다 [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) 이 댓글에 지정된 답변을 제거하는 방법.

다음 코드 예제는 코멘트에 대한 답변을 추가하고 댓글의 답변을 제거하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## 댓글을 읽으십시오

Aspose.Words 댓글의 답장을 읽는 지원. 더 보기 [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) 속성은 컬렉션을 반환 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 지정된 코멘트의 즉각적인 어린이가있는 개체.

다음과 같은 코드 예제는 주석의 응답을 통해 결정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
