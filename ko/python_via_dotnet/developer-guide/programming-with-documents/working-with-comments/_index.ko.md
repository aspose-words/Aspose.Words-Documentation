---
title: Python의 주석 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 주석 작업
linktitle: 주석 작업
description: "Python를 사용하여 문서에 주석을 추가, 제거 또는 조작하는 방법."
type: docs
weight: 260
url: /ko/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**온라인으로 사용해 보세요**

[무료 온라인 주석 제거](https://products.aspose.app/words/annotation)를 통해 이 기능을 사용해 볼 수 있습니다.

{{% /alert %}}

Aspose.Words를 사용하면 사용자가 주석 작업을 할 수 있습니다. Aspose.Words 문서의 주석은 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 클래스로 표시됩니다. 또한 [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) 및 [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) 클래스를 사용하여 주석과 연결되어야 하는 텍스트 영역을 지정합니다.

## 의견을 추가하다

Aspose.Words를 사용하면 여러 가지 방법으로 주석을 추가할 수 있습니다

1. [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 클래스 사용
2. [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) 및 [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) 클래스 사용

다음 코드 예제에서는 **Comment** 클래스를 사용하여 단락에 주석을 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

다음 코드 예제에서는 텍스트 영역과 **CommentRangeStart** 및 **CommentRangeEnd** 클래스를 사용하여 단락에 주석을 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## 댓글 추출 또는 제거

Word 문서에서 변경 내용 추적 외에도 메모를 사용하는 것은 문서를 검토할 때, 특히 검토자가 여러 명 있는 경우 일반적인 방법입니다. 문서에서 필요한 유일한 것이 주석뿐인 상황이 있을 수 있습니다. 검토 결과 목록을 생성하고 싶거나 문서에서 유용한 정보를 모두 수집하고 불필요한 주석을 제거하고 싶다고 가정해 보겠습니다. 특정 리뷰어의 댓글을 보거나 제거할 수 있습니다.

이 샘플에서는 문서 내의 주석에서 정보를 수집하고 문서에서 주석을 제거하는 몇 가지 간단한 방법을 살펴보겠습니다. 구체적으로 다음 방법을 다루겠습니다

- 문서에서 모든 댓글을 추출하거나 특정 작성자가 작성한 댓글만 추출합니다.
- 문서에서 모든 주석을 제거하거나 특정 작성자의 주석만 제거합니다.

### 댓글을 추출하거나 제거하는 방법

이 샘플의 코드는 실제로 매우 간단하며 모든 메서드는 동일한 접근 방식을 기반으로 합니다. Word 문서의 주석은 Aspose.Words 문서 개체 모델의 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 개체로 표시됩니다. 문서의 모든 주석을 수집하려면 첫 번째 매개변수가 [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment)로 설정된 [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) 메소드를 사용하십시오. **get_child_nodes** 메서드의 두 번째 매개변수가 true로 설정되어 있는지 확인하세요. 이렇게 하면 **get_child_nodes**이 직계 하위 노드만 수집하는 것이 아니라 모든 하위 노드에서 재귀적으로 선택하게 됩니다.

문서에서 주석을 추출하고 제거하는 방법을 설명하기 위해 다음 단계를 수행합니다

1. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스를 사용하여 Word 문서를 엽니다
1. 문서의 모든 댓글을 컬렉션으로 가져옵니다
1. 코멘트를 추출하려면:
   1. foreach 연산자를 사용하여 컬렉션을 살펴봅니다
   1. 모든 댓글의 작성자 이름, 날짜 및 시간, 텍스트를 추출하여 나열합니다
   1. 특정 작성자(이 경우 작성자 'ks')가 작성한 작성자 이름, 날짜 및 시간, 댓글 텍스트를 추출하여 나열합니다
1. 댓글을 삭제하려면:
   1. for 연산자를 사용하여 컬렉션을 뒤로 이동합니다
   1. 댓글 삭제
1. 변경 사항을 저장합니다

### 모든 댓글을 추출하는 방법

[get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) 방법은 매우 유용하며 모든 유형의 문서 노드 목록을 가져와야 할 때마다 사용할 수 있습니다. 컬렉션의 항목을 열거하거나 액세스할 때만 노드가 이 컬렉션으로 선택되므로 결과 컬렉션은 즉각적인 오버헤드를 생성하지 않습니다.

다음 코드 예제는 문서에 있는 모든 주석의 작성자 이름, 날짜 및 시간, 텍스트를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### 특정 작성자의 댓글을 추출하는 방법

[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 노드를 컬렉션으로 선택한 후 해야 할 일은 필요한 정보를 추출하는 것뿐입니다. 이 샘플에서는 작성자 이니셜, 날짜, 시간 및 주석의 일반 텍스트가 하나의 문자열로 결합됩니다. 대신 다른 방법으로 저장하도록 선택할 수도 있습니다.

특정 작성자로부터 댓글을 추출하는 오버로드된 메소드는 거의 동일합니다. 단지 정보를 배열에 추가하기 전에 작성자의 이름을 확인하는 것뿐입니다.

다음 코드 예제는 지정된 작성자의 작성자 이름, 날짜 및 시간, 댓글 텍스트를 추출하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### 댓글을 제거하는 방법

모든 댓글을 제거하는 경우 댓글을 하나씩 삭제하면서 컬렉션 전체를 이동할 필요가 없습니다. 댓글 컬렉션에서 [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/)를 호출하여 삭제할 수 있습니다.

다음 코드 예제에서는 문서의 모든 주석을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

주석을 선택적으로 제거해야 하는 경우 프로세스는 주석 추출에 사용한 코드와 더 유사해집니다.

다음 코드 예제에서는 지정된 작성자의 주석을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

여기서 강조할 점은 for 연산자를 사용하는 것입니다. 단순 추출과 달리 여기서는 댓글을 삭제하고 싶습니다. 적절한 트릭은 마지막 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)에서 첫 번째 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)까지 컬렉션을 거꾸로 반복하는 것입니다. 그 이유는 끝에서 시작하여 뒤로 이동하면 이전 항목의 색인이 변경되지 않고 그대로 유지되며 컬렉션의 첫 번째 항목으로 돌아갈 수 있기 때문입니다.

다음 코드 예제에서는 주석 추출 및 제거 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### CommentRangeStart와 CommentRangeEnd 사이의 주석을 제거하는 방법

Aspose.Words를 사용하면 **CommentRangeStart**와 **CommentRangeEnd** 노드 사이의 주석을 제거할 수도 있습니다.

다음 코드 예제에서는 **CommentRangeStart**와 **CommentRangeEnd** 사이의 텍스트를 제거하는 방법을 보여줍니다

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## 댓글의 답글 추가 또는 삭제

[add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) 메소드는 이 댓글에 답변을 추가합니다. 기존 Microsoft Office 제한으로 인해 문서에는 1단계의 답장만 허용됩니다. 기존 Reply 주석에서 이 메서드를 호출하면 **InvalidOperationException** 유형의 예외가 발생합니다.

[remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) 방법을 사용하여 이 댓글에 지정된 답변을 제거할 수 있습니다.

다음 코드 예제에서는 댓글에 답글을 추가하고 댓글의 답글을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## 댓글의 답글 읽기

[replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) 속성은 지정된 주석의 직계 하위 항목인 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 개체 컬렉션을 반환합니다.

다음 코드 예제에서는 주석의 답변을 반복하고 해결하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
