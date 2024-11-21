---
title: C#의 Aspose.Words Document Object Model(DOM)
second_title: .NET용 Aspose.Words
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model(DOM)는 Word 문서의 메모리 내 표현입니다. C#을 사용하여 Word 문서의 내용과 서식을 읽고, 조작하고, 수정합니다."
weight: 10
url: /ko/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model(DOM)는 Word 문서의 메모리 내 표현입니다. Aspose.Words DOM을 사용하면 Word 문서의 내용과 서식을 프로그래밍 방식으로 읽고, 조작하고, 수정할 수 있습니다.

이 섹션에서는 Aspose.Words DOM의 주요 클래스와 그 관계를 설명합니다. Aspose.Words DOM 클래스를 사용하면 문서 요소 및 서식에 프로그래밍 방식으로 액세스할 수 있습니다.

## `Document` 객체 트리 {#create-a-document-objects-tree} 생성

문서를 Aspose.Words DOM로 읽어오면 객체 트리가 작성되고 소스 문서의 다양한 유형의 요소에는 다양한 속성을 가진 자체 DOM 트리 객체가 있습니다.

### 문서 노드 트리 구축 {#build-document-nodes-tree}

Aspose.Words는 Word 문서를 메모리로 읽을 때 다양한 문서 요소를 나타내는 다양한 유형의 개체를 만듭니다. 텍스트, 단락, 표 또는 섹션의 모든 실행은 노드이며 문서 자체도 노드입니다. Aspose.Words는 모든 문서 노드 유형에 대한 클래스를 정의합니다.

Aspose.Words의 문서 트리는 복합 디자인 패턴을 따릅니다

- 모든 노드 클래스는 궁극적으로 Aspose.Words Document Object Model의 기본 클래스인 [Node](https://reference.aspose.com/words/net/aspose.words/node/) 클래스에서 파생됩니다.
- 다른 노드를 포함할 수 있는 노드(예: **Section** 또는 **Paragraph**)는 [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) 클래스에서 파생되고 이 클래스는 다시 **Node** 클래스에서 파생됩니다.

아래 제공된 다이어그램은 Aspose.Words Document Object Model(DOM)의 노드 클래스 간 상속을 보여줍니다. 추상 클래스의 이름은 이탤릭체로 표시됩니다.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="가정-단어-돔" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM에는 문서 내의 모양과 스타일을 사용자 정의하는 데 사용되는 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 또는 [Font](https://reference.aspose.com/words/net/aspose.words/font/)와 같은 비노드 클래스도 포함되어 있습니다. 이러한 클래스는 `Node` 클래스에서 상속되지 않은 것으로 이 다이어그램에 표시되지 않습니다.

{{% /alert %}}

예를 살펴보겠습니다. 다음 이미지는 다양한 유형의 콘텐츠가 포함된 Microsoft Word 문서를 보여줍니다.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="문서-예제-단어" style="width:700px"/>

위 문서를 Aspose.Words DOM로 읽어오면 아래 스키마와 같이 객체 트리가 생성됩니다.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="돔-어제-단어" style="width:700px"/>

다이어그램의 [Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/) 및 기타 모든 줄임표는 Word 문서의 요소를 나타내는 Aspose.Words 개체입니다.

### `Node` 유형 {#get-a-node-type} 받기

[Node](https://reference.aspose.com/words/net/aspose.words/node/) 클래스는 다양한 노드를 서로 구별하기에 충분하지만 Aspose.Words는 특정 유형의 노드 선택과 같은 일부 API 작업을 단순화하기 위해 [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) 열거형을 제공합니다.

각 노드의 유형은 [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) 속성을 사용하여 얻을 수 있습니다. 이 속성은 **NodeType** 열거형 값을 반환합니다. 예를 들어 **Paragraph** 클래스로 표시되는 단락 노드는 **NodeType**.**Paragraph**을 반환하고 **Table** 클래스로 표시되는 테이블 노드는 **NodeType**.**Table**를 반환합니다.

다음 예에서는 **NodeType** 열거형을 사용하여 노드 유형을 얻는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## 문서 트리 탐색 {#document-tree-navigation}

Aspose.Words는 문서를 노드 트리로 표현하므로 노드 간을 탐색할 수 있습니다. 이 섹션에서는 Aspose.Words에서 문서 트리를 탐색하고 탐색하는 방법을 설명합니다.

앞서 제시된 샘플 문서를 문서 탐색기에서 열면 노드 트리가 Aspose.Words에 표시된 것과 똑같이 나타납니다.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="문서 내 문서 탐색기" style="width:680px"/>

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)에서 샘플 프로젝트 "문서 탐색기"를 배울 수 있습니다.

{{% /alert %}}

### 문서 노드 관계 {#document-nodes-relationships}

트리의 노드에는 다음과 같은 관계가 있습니다

- 다른 노드를 포함하는 노드는 *parent.*입니다
- 상위 노드에 포함된 노드는 *child.*입니다. 동일한 상위 노드의 하위 노드는 *sibling* 노드입니다.
- *root* 노드는 항상 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 노드입니다.

다른 노드를 포함할 수 있는 노드는 [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) 클래스에서 파생되며 모든 노드는 궁극적으로 [Node](https://reference.aspose.com/words/net/aspose.words/node/) 클래스에서 파생됩니다. 이러한 두 기본 클래스는 트리 구조 탐색 및 수정을 위한 공통 메서드와 속성을 제공합니다.

다음 UML 개체 다이어그램은 샘플 문서의 여러 노드와 부모, 자식 및 형제 속성을 통한 노드 간의 관계를 보여줍니다

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="문서-노드-관계-표현-단어" style="width:370px"/>

#### 문서가 노드 소유자임

스타일 및 목록과 같은 중요한 문서 전체 구조가 **Document** 노드에 저장되기 때문에 노드는 트리에서 방금 생성되었거나 제거된 경우에도 항상 특정 문서에 속합니다. 예를 들어, 각 단락에는 문서에 대해 전역적으로 정의된 할당된 스타일이 있으므로 **Document** 없이 **Paragraph**를 가질 수 없습니다. 이 규칙은 새 노드를 생성할 때 사용됩니다. 새 **Paragraph**를 DOM에 직접 추가하려면 생성자에 전달된 문서 객체가 필요합니다.

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) 속성은 노드가 속한 문서를 반환합니다.

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)를 사용하여 새 단락을 생성할 때 빌더에는 항상 [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) 속성을 통해 연결된 **Document** 클래스가 있습니다.

다음 코드 예제는 노드를 생성할 때 노드를 소유할 문서가 항상 정의된다는 것을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### 상위 노드

각 노드에는 [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) 속성으로 지정된 상위 노드가 있습니다. 다음과 같은 경우 노드에는 상위 노드가 없습니다. 즉, **ParentNode**는 null입니다

- 노드가 방금 생성되었으며 아직 트리에 추가되지 않았습니다.
- 노드가 트리에서 제거되었습니다.
- 이것은 항상 null 상위 노드를 갖는 루트 **Document** 노드입니다.

[Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) 메서드를 호출하여 상위 노드에서 노드를 제거할 수 있습니다. 다음 코드 예제에서는 상위 노드에 액세스하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### 하위 노드

[CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/)의 하위 노드에 액세스하는 가장 효율적인 방법은 각각 첫 번째 하위 노드와 마지막 하위 노드를 반환하는 [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) 및 [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) 속성을 사용하는 것입니다. 하위 노드가 없으면 이러한 속성은 *null*를 반환합니다.

**CompositeNode**는 하위 노드에 대한 색인화 또는 열거형 액세스를 가능하게 하는 [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) 방법도 제공합니다. **ChildNodes** 속성은 노드의 라이브 컬렉션입니다. 즉, 노드가 제거되거나 추가되는 등 문서가 변경될 때마다 **ChildNodes** 컬렉션이 자동으로 업데이트됩니다.

노드에 자식이 없으면 **ChildNodes** 속성은 빈 컬렉션을 반환합니다. [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) 속성을 사용하여 **CompositeNode**에 하위 노드가 포함되어 있는지 확인할 수 있습니다.

다음 코드 예제에서는 `ChildNodes` 컬렉션에서 제공하는 열거자를 사용하여 `CompositeNode`의 직계 자식 노드를 열거하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

다음 코드 예제에서는 인덱싱된 액세스를 사용하여 `CompositeNode`의 직계 하위 노드를 열거하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### 형제 노드

각각 [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) 및 [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) 속성을 사용하여 특정 노드 바로 앞이나 뒤에 있는 노드를 얻을 수 있습니다. 노드가 상위 노드의 마지막 하위 노드인 경우 **NextSibling** 속성은 *null*입니다. 반대로, 노드가 상위 노드의 첫 번째 하위 노드인 경우 **PreviousSibling** 속성은 *null*입니다.

다음 코드 예제에서는 복합 노드의 모든 직접 및 간접 하위 노드를 효율적으로 방문하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### 하위 및 상위 노드 {#typed-access-to-child-and-parent-nodes}에 대한 형식화된 액세스

지금까지 기본 유형(**Node** 또는 **CompositeNode**) 중 하나를 반환하는 속성에 대해 논의했습니다. 그러나 때로는 **Run**이나 **Paragraph**와 같은 특정 노드 클래스로 값을 캐스팅해야 하는 상황이 있습니다. 즉, 복합적인 Aspose.Words DOM로 작업할 때 캐스팅에서 완전히 벗어날 수는 없습니다.

캐스팅의 필요성을 줄이기 위해 대부분의 Aspose.Words 클래스는 강력한 형식의 액세스를 제공하는 속성과 컬렉션을 제공합니다. 입력된 액세스에는 세 가지 기본 패턴이 있습니다

- 상위 노드는 형식화된 **FirstXXX** 및 **LastXXX** 속성을 노출합니다. 예를 들어 **Document**에는 [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) 및 [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) 속성이 있습니다. 마찬가지로 **Table**에는 [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) 등과 같은 속성이 있습니다.
- 상위 노드는 [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) 등과 같은 형식화된 하위 노드 컬렉션을 노출합니다.
- 하위 노드는 [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) 등과 같은 상위 노드에 대한 형식화된 액세스를 제공합니다.

형식화된 속성은 [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) 및 [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/)에서 상속된 일반 속성보다 더 쉽게 액세스할 수 있는 유용한 바로 가기일 뿐입니다.

다음 코드 예제에서는 형식화된 속성을 사용하여 문서 트리의 노드에 액세스하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
