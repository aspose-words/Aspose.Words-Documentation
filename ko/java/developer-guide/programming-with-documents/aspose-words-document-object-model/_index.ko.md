---
title: Aspose.Words문서 개체 모델(DOM)
second_title: Aspose.WordsJava
articleTitle: Aspose.Words문서 개체 모델(DOM)
linktitle: Aspose.Words문서 개체 모델(DOM)
type: docs
description: "문서 개체 모델(DOM)은 단어 문서의 메모리 내 표현입니다. Java을 사용하여 단어 문서의 내용과 서식을 읽고,조작하고,수정합니다."
weight: 10
url: /ko/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words문서 개체 모델(DOM)은 단어 문서의 메모리 내 표현입니다. Aspose.WordsDOM을 사용하면 워드 문서의 내용과 서식을 프로그래밍 방식으로 읽고 조작하고 수정할 수 있습니다.

이 섹션에서는Aspose.WordsDOM의 주요 클래스와 그 관계에 대해 설명합니다. Aspose.WordsDOM클래스를 사용하여 문서 요소 및 서식에 대한 프로그래밍 방식으로 액세스할 수 있습니다.

## 문서 개체 트리 만들기 {#create-a-document-objects-tree}

문서가Aspose.WordsDOM로 읽히면 객체 트리가 만들어지고 소스 문서의 다른 유형의 요소는 다양한 속성을 가진 자체DOM트리 객체를 가지고 있습니다.

### 빌드 문서 노드 트리 {#build-document-nodes-tree}

Aspose.Words이 단어 문서를 메모리로 읽으면 다양한 문서 요소를 나타내는 다른 유형의 개체를 만듭니다. 텍스트,단락,테이블 또는 섹션의 모든 실행은 노드이며 문서 자체도 노드입니다. Aspose.Words은 모든 문서 노드 유형에 대한 클래스를 정의합니다.

Aspose.Words의 문서 트리는 복합 디자인 패턴을 따릅니다:

- 모든 노드 클래스는 궁극적으로Aspose.Words문서 개체 모델의 기본 클래스인[Node](https://reference.aspose.com/words/java/com.aspose.words/node/)클래스에서 파생됩니다.
- 다른 노드(예:**Section**또는**Paragraph**)를 포함할 수 있는 노드는[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)클래스에서 파생되며,이는**Node**클래스에서 파생됩니다.

아래에 제공된 다이어그램은Aspose.Words문서 개체 모델(DOM)의 노드 클래스 간의 상속을 보여줍니다. 추상적인 클래스의 이름은 이태리로 표시되어 있습니다.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.WordsDOM에는[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)또는[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)과 같은 노드가 아닌 클래스도 포함되어 있으며,이는 문서 내에서 모양과 스타일을 사용자 정의하는 데 사용됩니다. 이러한 클래스는`Node`클래스에서 상속되지 않은 것으로 이 다이어그램에 표시되지 않습니다.

{{% /alert %}}

의 예를 살펴 보자. 다음 이미지는 콘텐츠 형식이 다른Microsoft Word문서를 보여 줍니다.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

위의 문서를Aspose.WordsDOM로 읽을 때 아래 스키마와 같이 개체 트리가 생성됩니다.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), 그리고 다이어그램의 다른 모든 타원은 단어 문서의 요소를 나타내는Aspose.Words개체입니다.

### `Node`유형 {#get-a-node-type}을 가져옵니다.

[Node](https://reference.aspose.com/words/java/com.aspose.words/node/)클래스는 서로 다른 노드를 구별하기에 충분하지만,Aspose.Words는 특정 유형의 노드를 선택하는 것과 같은 일부API작업을 단순화하기 위해[NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/)열거를 제공합니다.

각 노드의 유형은[NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType)속성을 사용하여 얻을 수 있습니다. 이 속성은**NodeType**열거형 값을 반환합니다. 예를 들어,**Paragraph**클래스로 표현된 단락 노드는**NodeType**.**Paragraph**을 반환하고,**Table**클래스로 표현된 테이블 노드는**NodeType**.**Table**를 반환합니다.

다음 예제에서는**NodeType**열거형을 사용하여 노드 유형을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## 문서 트리 탐색 {#document-tree-navigation}

Aspose.Words은 노드 간에 이동할 수 있는 노드 트리로 문서를 나타냅니다. 이 섹션에서는Aspose.Words에서 문서 트리를 탐색하고 탐색하는 방법을 설명합니다.

문서 탐색기에서 앞에서 설명한 예제 문서를 열면 노드 트리가Aspose.Words에 표시된 대로 정확하게 나타납니다.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

당신은 샘플 프로젝트"문서 탐색기"를 배울 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### 문서 노드 관계 {#document-nodes-relationships}

트리의 노드들은 그들 사이에 관계를 가지고 있습니다.:

- 다른 노드를 포함하는 노드는*parent.*
- 부모 노드에 포함 된 노드는*child.*동일한 부모의 자식 노드는*sibling*노드입니다.
- *root*노드는 항상[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)노드입니다.

다른 노드를 포함할 수 있는 노드는[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)클래스에서 파생되며 모든 노드는 궁극적으로[Node](https://reference.aspose.com/words/java/com.aspose.words/node/)클래스에서 파생됩니다. 이 두 기본 클래스는 트리 구조 탐색 및 수정에 대한 일반적인 메서드와 속성을 제공합니다.

다음UML개체 다이어그램은 샘플 문서의 여러 노드와 부모,자식 및 형제 속성을 통해 서로 관계를 보여 줍니다:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### 문서는 노드 소유자입니다

노드는 트리에서 방금 생성되거나 제거되었더라도 항상 특정 문서에 속합니다.왜냐하면 스타일과 목록과 같은 중요한 문서 전체 구조가**Document**노드에 저장되기 때문입니다. 예를 들어,각 단락에 문서에 대해 전역적으로 정의된 할당된 스타일이 있기 때문에**Document**없이**Paragraph**을 사용할 수 없습니다. 이 규칙은 새 노드를 만들 때 사용됩니다. DOM에 직접 새**Paragraph**을 추가하려면 생성자에 전달된 문서 개체가 필요합니다.

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument)속성은 노드가 속한 문서를 반환합니다.

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)을 사용하여 새 단락을 만들 때 빌더는 항상[DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document)속성을 통해 연결된**Document**클래스를 갖습니다.

다음 코드 예제에서는 노드를 만들 때 노드를 소유할 문서가 항상 정의된다는 것을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### 부모 노드

각 노드에는 [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) 속성으로 지정된 부모가 있습니다. 노드에는 부모 노드가 없습니다. 즉, 다음의 경우 **ParentNode**은 null입니다.

- 노드가 방금 생성되었으며 아직 트리에 추가되지 않았습니다.
- 노드가 트리에서 제거되었습니다.
- 이것은 항상 널 부모 노드를 가진 루트**Document**노드입니다.

[Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove)메서드를 호출하여 부모 노드를 제거할 수 있습니다.다음 코드 예제에서는 부모 노드에 액세스하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### 자식 노드

[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)의 자식 노드에 액세스하는 가장 효율적인 방법은 각각 첫 번째 및 마지막 자식 노드를 반환하는[FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild)및[LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild)속성을 통해입니다. 자식 노드가 없으면 이러한 속성은*null*을 반환합니다.

**CompositeNode**

노드에 자식이 없는 경우**ChildNodes**속성은 빈 컬렉션을 반환합니다. [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes)속성을 사용하여**CompositeNode**에 자식 노드가 있는지 여부를 확인할 수 있습니다.

다음 코드 예제에서는`ChildNodes`컬렉션에서 제공하는 열거자를 사용하여`CompositeNode`의 직접 자식 노드를 열거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

다음 코드 예제에서는 인덱싱된 액세스를 사용하여`CompositeNode`의 직접 자식 노드를 열거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### 형제 노드

[PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling)및[NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling)속성을 각각 사용하여 특정 노드 바로 앞이나 뒤에 오는 노드를 얻을 수 있습니다. 노드가 부모의 마지막 자식이라면**NextSibling**속성은*null*입니다. 반대로,노드가 부모의 첫 번째 자식이라면,**PreviousSibling**속성은*null*입니다.

다음 코드 예제에서는 복합 노드의 모든 직접 및 간접 자식 노드를 효율적으로 방문하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### 자식 및 부모 노드에 대한 형식화된 액세스

지금까지**Node**또는**CompositeNode**의 기본 유형 중 하나를 반환하는 속성에 대해 논의했습니다. 그러나 때때로**Run**또는**Paragraph**와 같은 특정 노드 클래스에 값을 캐스팅해야 할 수도 있는 상황이 있습니다. 즉,합성 인Aspose.WordsDOM로 작업 할 때 캐스팅을 완전히 벗어날 수 없습니다.

캐스팅의 필요성을 줄이기 위해 대부분의Aspose.Words클래스는 강력한 형식의 액세스를 제공하는 속성과 컬렉션을 제공합니다. 입력된 접근에는 세 가지 기본 패턴이 있습니다.:

- 부모 노드는 형식화된**FirstXXX**및**LastXXX**속성을 노출합니다. 예를 들어,**Document**에는[FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection)및[LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection)속성이 있습니다. 마찬가지로**Table**에는[FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow),[LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow)및 기타와 같은 속성이 있습니다.
- 부모 노드는[Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections),[Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs)등과 같은 형식화된 자식 노드 컬렉션을 노출합니다.
- 자식 노드는[Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph),[Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection)및 기타와 같은 부모에 대한 형식화된 액세스를 제공합니다.

형식화된 속성은[Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode)및[CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)에서 상속된 일반 속성보다 더 쉽게 액세스할 수 있는 유용한 바로 가기에 불과합니다.

다음 코드 예제에서는 형식화된 속성을 사용하여 문서 트리의 노드에 액세스하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
