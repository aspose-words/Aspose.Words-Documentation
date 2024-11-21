---
title: Aspose.Words 문서 개체 모델(DOM)에 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: Aspose.Words 문서 개체 모델(DOM)
linktitle: Aspose.Words 문서 개체 모델(DOM)
type: docs
description: "문서 개체 모델(DOM)는 단어 문서의 메모리 내 표현입니다. 다음을 사용하여 단어 문서의 내용 및 서식을 읽고 조작하고 수정합니다 C++."
weight: 10
url: /ko/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

그 Aspose.Words 문서 개체 모델(DOM)는 단어 문서의 메모리 내 표현입니다. 그 Aspose.Words DOM 워드 문서의 내용과 서식을 프로그래밍 방식으로 읽고,조작하고,수정할 수 있습니다.

이 섹션에서는 Aspose.Words DOM 그리고 그들의 관계. 를 사용하여 Aspose.Words DOM 클래스,당신은 문서 요소 및 서식에 대한 프로그래밍 액세스를 얻을 수 있습니다.

## 문서 개체 트리 만들기 {#create-a-document-objects-tree}

문서를 읽을 때 Aspose.Words DOM,그러면 객체 트리가 만들어지고 소스 문서의 다른 유형의 요소는 그들만의 DOM 다양한 속성을 가진 트리 개체.

### 빌드 문서 노드 트리 {#build-document-nodes-tree}

언제 Aspose.Words 단어 문서를 메모리로 읽고 다양한 문서 요소를 나타내는 다양한 유형의 개체를 만듭니다. 텍스트,단락,테이블 또는 섹션의 모든 실행은 노드이며 문서 자체도 노드입니다. Aspose.Words 모든 문서 노드 유형에 대한 클래스를 정의합니다.

문서 트리 Aspose.Words 복합 디자인 패턴을 따릅니다.:

- 모든 노드 클래스는 궁극적으로 [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) 클래스,즉 기본 클래스입니다. Aspose.Words 문서 개체 모델.
- 예를 들어 다른 노드를 포함할 수 있는 노드, **Section** 또는 **Paragraph**,에서 유래 [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) 클래스,즉 **Node** 수업

아래 다이어그램은 노드 클래스 간의 상속을 보여줍니다. Aspose.Words 문서 개체 모델(DOM). 추상적인 클래스의 이름은 이태리로 표시되어 있습니다.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

그 Aspose.Words DOM 또한 다음과 같은 노드가 아닌 클래스도 포함합니다. [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) 또는 [Font](https://reference.aspose.com/words/cpp/aspose.words/font/),문서 내의 모양과 스타일을 사용자 정의하는 데 사용됩니다. 이러한 클래스는 이 다이어그램에서 상속되지 않은 것으로 표시되지 않습니다. `Node` 수업

{{% /alert %}}

의 예를 살펴 보자. 다음 그림은 Microsoft Word 콘텐츠 유형이 다른 문서.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

위의 문서를 읽을 때 Aspose.Words DOM,아래의 스키마에서 보여지는 것처럼 객체의 트리가 만들어집니다.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/),그리고 다이어그램의 다른 모든 타원형은 Aspose.Words 단어 문서의 요소를 나타내는 개체입니다.

### 를 얻을 `Node` 유형 {#get-a-node-type}

비록 [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) 클래스는 서로 다른 노드를 구별하기에 충분, Aspose.Words 제공 [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) 몇 가지를 단순화하는 열거 API 특정 유형의 노드 선택과 같은 작업.

각 노드의 유형은 [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/) 재산. 이 속성은 **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**,그리고 테이블 노드는 **Table** class returns **NodeType**.**Table**.

다음 예제에서는 다음을 사용하여 노드 유형을 가져오는 방법을 보여 줍니다 **NodeType** 열거:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## 문서 트리 탐색 {#document-tree-navigation}

Aspose.Words 노드 사이를 탐색할 수 있는 노드 트리로 문서를 나타냅니다. 이 섹션에서는 문서 트리를 탐색하고 탐색하는 방법에 대해 설명합니다 Aspose.Words.

문서 탐색기에서 앞에서 설명한 예제 문서를 열면 노드 트리가 다음과 같이 표시됩니다 Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### 문서 노드 관계 {#document-nodes-relationships}

트리의 노드들은 그들 사이에 관계를 가지고 있습니다.:

- 다른 노드를 포함하는 노드는 *parent.*
- 부모 노드에 포함된 노드는 *child.* 같은 부모의 자식 노드는 *sibling* 노드
- 그 *root* 노드는 항상 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 노드

다른 노드를 포함할 수 있는 노드는 [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) 클래스,그리고 모든 노드는 궁극적으로 [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) 수업 이 두 기본 클래스는 트리 구조 탐색 및 수정에 대한 일반적인 메서드와 속성을 제공합니다.

다음 과 같은 것 들 UML 개체 다이어그램은 샘플 문서의 여러 노드와 부모,자식 및 형제 속성을 통해 서로 관계를 보여줍니다:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### 문서는 노드 소유자입니다

노드는 트리에서 방금 생성되거나 제거되었더라도 항상 특정 문서에 속합니다.왜냐하면 스타일과 목록과 같은 중요한 문서 전체 구조가 **Document** 노드 예를 들어, **Paragraph** 없이 **Document** 각 단락에는 문서에 대해 전역적으로 정의된 할당된 스타일이 있기 때문입니다. 이 규칙은 새 노드를 만들 때 사용됩니다. 새로운 추가 **Paragraph** 직접 DOM 생성자에 전달된 문서 개체가 필요합니다.

{{% alert color="primary" %}}

그 [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) 속성은 노드가 속한 문서를 반환합니다.

{{% /alert %}}

다음을 사용하여 새 단락을 만들 때 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/),건설자는 항상 **Document** 그것을 통해 연결된 클래스 [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/) 재산.

다음 코드 예제에서는 노드를 만들 때 노드를 소유할 문서가 항상 정의된다는 것을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### 부모 노드

각 노드에는 [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) 재산. 노드에는 부모 노드가 없습니다., **ParentNode** 다음과 같은 경우에 무효입니다:

- 노드가 방금 생성되었으며 아직 트리에 추가되지 않았습니다.
- 노드가 트리에서 제거되었습니다.
- 이 루트입니다 **Document** 항상 널 부모 노드가 있는 노드.

당신은 호출하여 부모 노드를 제거 할 수 있습니다 [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) 방법다음 코드 예제에서는 부모 노드에 액세스하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### 자식 노드

의 자식 노드에 액세스하는 가장 효율적인 방법 [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) 이 통해 [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) 그리고 [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) 첫 번째 및 마지막 자식 노드를 각각 반환하는 속성입니다. 자식 노드가 없으면 이러한 속성이 반환됩니다 *null*.

**CompositeNode**

만약 노드가 자식이 없다면, **ChildNodes** 속성은 빈 컬렉션을 반환합니다. 당신은 여부를 확인할 수 있습니다 **CompositeNode** 다음을 사용하는 모든 자식 노드를 포함합니다 [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/) 재산.

다음 코드 예제에서는 직접 자식 노드를 열거하는 방법을 보여 줍니다 `CompositeNode` 에 의해 제공되는 열거자를 사용하여 `ChildNodes` 수집:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

다음 코드 예제에서는 직접 자식 노드를 열거하는 방법을 보여 줍니다 `CompositeNode` 인덱싱된 액세스 사용:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### 형제 노드

특정 노드의 바로 앞이나 뒤에 오는 노드를 얻을 수 있습니다. [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) 그리고 [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/) 각각 속성. 만약 노드가 부모의 마지막 자식이라면, **NextSibling** 재산은 *null*. 반대로,노드가 부모의 첫 번째 자식이라면, **PreviousSibling** 재산은 *null*.

다음 코드 예제에서는 복합 노드의 모든 직접 및 간접 자식 노드를 효율적으로 방문하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### 자식 및 부모 노드에 대한 형식화된 액세스

지금까지 기본 형식 중 하나를 반환하는 속성에 대해 설명했습니다 – **Node** 또는 **CompositeNode**. 그러나 다음과 같이 특정 노드 클래스에 값을 캐스팅해야 하는 경우가 있습니다 **Run** 또는 **Paragraph**. 즉,함께 작업 할 때 캐스팅에서 완전히 벗어날 수 없습니다 Aspose.Words DOM,복합적인 것입니다.

캐스팅의 필요성을 줄이기 위해,대부분 Aspose.Words 클래스는 강력한 형식의 액세스를 제공하는 속성 및 컬렉션을 제공합니다. 입력된 접근에는 세 가지 기본 패턴이 있습니다.:

- 부모 노드는 형식화된 노드를 노출합니다 **FirstXXX** 그리고 **LastXXX** 속성. 예를 들어, **Document** 이 [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) 그리고 [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) 속성. 마찬가지로, **Table** 다음과 같은 성질을 가지고 있습니다. [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/),그리고 다른 것들.
- 부모 노드는 다음과 같은 형식화된 자식 노드 컬렉션을 노출합니다 [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/),그리고 다른 것들.
- 자식 노드는 다음과 같이 부모에 대한 형식화된 액세스를 제공합니다 [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/),그리고 다른 것들.

형식화된 속성은 때때로 상속된 일반 속성보다 쉽게 액세스할 수 있는 유용한 바로 가기에 불과합니다 [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) 그리고 [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

다음 코드 예제에서는 형식화된 속성을 사용하여 문서 트리의 노드에 액세스하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
