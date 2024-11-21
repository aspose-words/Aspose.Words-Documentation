---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words 제품정보 Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (주)DOM)는 Word 문서의 in-memory 표현입니다. 읽기, 조작, 및 워드 문서의 내용을 수정 Java·"
weight: 10
url: /ko/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

더 보기 Aspose.Words Document Object Model (주)DOM)는 Word 문서의 in-memory 표현입니다. 더 보기 Aspose.Words DOM 프로그래밍을 읽을 수 있고 조작하고 Word 문서의 내용과 형식을 수정합니다.

이 섹션은 메인 클래스의 설명 Aspose.Words DOM 그리고 그들의 관계. 자주 묻는 질문 Aspose.Words DOM 수업, 문서 요소 및 형식에 대한 programmatic 액세스를 얻을 수 있습니다.

## 문서 작성 개체 트리 {#create-a-document-objects-tree}

문서가 읽을 때 Aspose.Words <span notrans="<span notrans=" DOM"=""></span>· 그런 다음 오브젝트 트리는 소스 문서의 요소의 내장 및 다른 유형의 자체가 DOM 다양한 속성을 가진 나무 개체.

### 문서 노드 트리 구축 {#build-document-nodes-tree}

시간: Aspose.Words Word 문서를 메모리로 읽습니다. 다양한 문서 요소를 나타내는 다른 유형의 개체를 만듭니다. 각 텍스트, 단락, 테이블, 또는 섹션은 노드이며 문서 자체는 노드입니다. Aspose.Words 모든 문서 노드 유형의 클래스를 정의합니다.

문서 트리 Aspose.Words 합성 디자인 본을 따르십시오:

- 모든 노드 클래스에서 궁극적으로 derive [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) 클래스, 이는 기본 클래스에서 Aspose.Words Document Object Model·
- 다른 노드를 포함 할 수있는 노드, 예를 들어, **Section** 또는 **Paragraph**, derive에서 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 클래스, 에서 회전 derives에서 **Node** 수업.

아래에서 제공되는 다이어그램은 노드 클래스의 상속을 보여줍니다. Aspose.Words Document Object Model (주)DOM). 요약 클래스의 이름은 Italics입니다.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

더 보기 Aspose.Words DOM 또한 non-node 클래스를 포함 [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) 또는 [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), 문서 내에서 외관과 스타일을 사용자 정의하는 데 사용됩니다. 이 클래스는 이 다이어그램에 표시되지 않습니다. `Node` 수업.

{{% /alert %}}

예제를 살펴 보자. 뒤에 오는 이미지 쇼 Microsoft Word 다른 유형의 콘텐츠를 가진 문서.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

위의 문서를 읽을 때 Aspose.Words DOM, 개체의 나무는 아래에 스키마에 표시된 것과 같이 창조됩니다.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), 그리고 도표에 다른 모든 ellipses는 입니다 Aspose.Words Word 문서의 요소를 나타내는 개체.

### 더 보기 `Node` 제품정보 {#get-a-node-type}

그러나 [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) 클래스는 서로 다른 노드를 구별하는 것이 충분합니다. Aspose.Words 제품정보 [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) 몇몇을 간단하게 하기 위하여 enumeration API 특정 유형의 노드 선택과 같은 작업.

각 노드의 유형은 얻을 수 있습니다. [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) 호텔 위치 이 속성은 반환 **NodeType** 공급 능력 예를 들어, 단락 노드는 **Paragraph** 클래스 반환 **NodeType**·**Paragraph**, 테이블 노드가 대표 **Table** 클래스 반환 **NodeType**·**Table**·

다음 예제는 노드 유형을 사용하는 방법을 보여줍니다. **NodeType** 공급 능력:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## 문서 트리 {#document-tree-navigation}

Aspose.Words 노드를 탐색할 수 있는 노드 트리로 문서를 나타냅니다. 이 섹션에서는 문서 트리를 탐색하고 탐색하는 방법을 설명합니다. Aspose.Words·

샘플 문서를 열 때, 이전에 발표 된 문서 탐색기에서 노드 트리는 그것이 나타내는 것처럼 정확히 나타납니다. Aspose.Words·

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

샘플 프로젝트 "Document Explorer"를 배울 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer)·

{{% /alert %}}

### 문서 노드 관계 {#document-nodes-relationships}

나무의 노드는 그들 사이의 관계가 있습니다

- 다른 노드를 포함하는 노드는 *parent.*
- - - 부모 노드에 포함된 노드는 *child.* 동일한 부모의 자식 노드는 *sibling* 노드.
- 한국어 *root* 노드는 항상 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 노드.

다른 노드가 derive를 포함할 수 있는 노드 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 클래스, 그리고 모든 노드 궁극적으로 derive에서 [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) 수업. 이 두 가지 기본 클래스는 나무 구조 탐색 및 수정을위한 일반적인 방법 및 특성을 제공합니다.

다음 UML 객체 다이어그램은 샘플 문서의 여러 노드와 부모, 아이, sibling 속성을 통해 서로의 관계들을 보여줍니다

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### 문서는 Node 소유자입니다

노드는 항상 특정 문서에 속하며, 트리에서 생성되거나 제거된 경우에도 스타일과 목록과 같은 중요한 문서 전체 구조가 저장되기 때문입니다. **Document** 노드. 예를 들어, 그것은 할 수 없습니다 **Paragraph** 없음 **Document** 각 단락은 글로벌 문서에 정의 된 형식을 가지고 있기 때문에. 이 규칙은 새로운 노드를 만들 때 사용됩니다. 새로운 추가 **Paragraph** 직접에 DOM 생성자에 전달된 문서 객체가 필요합니다.

{{% alert color="primary" %}}

더 보기 [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) 속성은 노드가 속한 문서를 반환합니다.

{{% /alert %}}

새 단락을 만들 때 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), 빌더는 항상 **Document** 그것을 통해서 연결되는 종류 [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) 호텔 위치

다음 코드 예제는 노드를 만들 때, 노드가 항상 정의된 문서는 다음과 같습니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### 부모 노드

각 노드에는 지정된 부모가 있습니다. [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) 호텔 위치 노드에는 부모 노드가 없습니다. 즉, **ParentNode** null은 다음과 같은 경우입니다

- - - 노드가 생성되고 아직 나무에 추가되지 않았습니다.
- - - 노드는 나무에서 제거되었습니다.
- - - 이것은 뿌리입니다. **Document** 항상 null 부모 노드가 있는 노드.

부모로부터 노드를 제거할 수 있습니다. [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) 방법. 다음 코드 예제는 부모 노드에 접근하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### 아이 노드

아이 노드에 액세스하는 가장 효율적인 방법 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 을 통해 [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) · [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) 첫 번째 및 마지막 아이 노드를 반환하는 속성. 아이 노드가 없다면, 이러한 속성 반환 *null*·

**CompositeNode** 또한 제공 [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) 수집은 아이 노드에 대한 인덱스 또는 enumerated 접근을 가능하게 합니다. 더 보기 **ChildNodes** 속성은 노드가 제거되거나 추가될 때 문서가 변경될 때마다 노드의 라이브 컬렉션입니다. **ChildNodes** 수집은 자동으로 업데이트됩니다.

노드가 자식이 없다면, 그 다음 **ChildNodes** 속성은 빈 컬렉션을 반환합니다. 당신은 확인할 수 있습니다 **CompositeNode** 모든 아이 노드가 포함되어 있습니다. [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) 호텔 위치

다음 코드 예제는 즉각적인 아이 노드를 enumerate하는 방법을 보여줍니다. `CompositeNode` enumerator를 사용하여 `ChildNodes` 수집:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

다음 코드 예제는 즉각적인 아이 노드를 enumerate하는 방법을 보여줍니다. `CompositeNode` 색인된 접근을 사용하여:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Sibling 노드

즉시 precedes 또는 특정 노드를 사용하여 노드를 얻을 수 있습니다 [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) · [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) 재산, 각각. 노드가 부모의 마지막 자녀라면 그 다음 **NextSibling** 호텔 위치 *null*· 반전적으로 노드가 부모의 첫 번째 아이라면, **PreviousSibling** 호텔 위치 *null*·

다음 코드 예제는 복합 노드의 모든 직접 및 간접 아이 노드를 효율적으로 방문하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### 자녀와 부모 노드에 대한 접근

지금까지, 우리는 기본 유형 중 하나를 돌려주는 속성을 논의했습니다. **Node** 또는 **CompositeNode**· 그러나 때로는 특정 노드 클래스에 값을 던져야 할 상황이 있습니다. **Run** 또는 **Paragraph**· 그것은, 당신은 완전히 주조에서 멀리 얻을 수 없습니다 Aspose.Words DOM, 합성물.

주물을 위한 필요를 감소시키기 위하여, 대부분 Aspose.Words 클래스는 강력한 접근을 제공하는 속성과 컬렉션을 제공합니다. 유형 접근의 3개의 기본적인 본이 있습니다:

- 부모 노드가 typed를 노출합니다. **FirstXXX** · **LastXXX** 이름 * 예를 들어, **Document** 제품정보 [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) · [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) 이름 * 마찬가지로, **Table** 같은 속성 [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), 기타.
- 부모 노드는 아이 노드의 유형화 컬렉션을 공개한다. [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), 기타.
- 아이 노드는 부모에게 입력된 접근을 제공합니다. [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), 기타.

Typed 속성은 때로는 유전 적 특성보다 쉽게 액세스 할 수있는 짧게 유용합니다. [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) · [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)·

다음 코드 예제는 문서 트리의 노드에 접근하기 위해 Typed 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
