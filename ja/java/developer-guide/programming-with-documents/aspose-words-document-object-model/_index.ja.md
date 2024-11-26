---
title: Aspose.Wordsドキュメントオブジェクトモデル(DOM)
second_title: Aspose.WordsのためのJava
articleTitle: Aspose.Wordsドキュメントオブジェクトモデル(DOM)
linktitle: Aspose.Wordsドキュメントオブジェクトモデル(DOM)
type: docs
description: "ドキュメントオブジェクトモデル(DOM)は、Word文書のメモリ内表現です。 Javaを使用してWord文書の内容と書式を読み取り、操作し、変更します。"
weight: 10
url: /ja/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsドキュメントオブジェクトモデル(DOM)は、Word文書のメモリ内表現です。 Aspose.WordsDOMを使用すると、プログラムでWord文書の内容と書式を読み取り、操作、および変更できます。

このセクションでは、Aspose.WordsDOMの主なクラスとその関係について説明します。 Aspose.WordsDOMクラスを使用すると、文書要素と書式設定へのプログラムによるアクセスを取得できます。

## ドキュメントオブジェクトツリー {#create-a-document-objects-tree}の作成

文書がAspose.WordsDOMに読み込まれると、オブジェクトツリーが構築され、ソース文書の異なるタイプの要素には、さまざまなプロパティを持つ独自のDOMtreeオブジェク

### ビルドドキュメントノードツリー {#build-document-nodes-tree}

Aspose.WordsがWord文書をメモリに読み込むと、さまざまな文書要素を表すさまざまな型のオブジェクトが作成されます。 テキスト、段落、表、またはセクションのすべての実行はノードであり、ドキュメント自体もノードです。 Aspose.Wordsは、すべてのドキュメントノード型のクラスを定義します。

Aspose.Wordsのドキュメントツリーは、複合デザインパターンに従います:

- すべてのノードクラスは、最終的にAspose.Wordsドキュメントオブジェクトモデルの基本クラスである[Node](https://reference.aspose.com/words/java/com.aspose.words/node/)クラスから派生します。
- **Section**や**Paragraph**などの他のノードを含むことができるノードは、[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)クラスから派生し、**Node**クラスから派生します。

下の図は、Aspose.Wordsドキュメントオブジェクトモデル(DOM)のノードクラス間の継承を示しています。 抽象クラスの名前は斜体で表示されます。

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.WordsDOMには、ドキュメント内の外観とスタイルをカスタマイズするために使用される[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)や[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)などの非ノードクラスも含まれています。Aspose.WordsDOMには、[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)や[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)などの非ノードクラスも含まれています。 これらのクラスは、`Node`クラスから継承されていないため、この図には示されていません。

{{% /alert %}}

例を見てみましょう。 次の画像は、さまざまな種類のコンテンツを含むMicrosoft Wordドキュメントを示しています。

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

上記の文書をAspose.WordsDOMに読み込むと、以下のスキーマに示すように、オブジェクトのツリーが作成されます。

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), また、図上の他のすべての楕円は、Word文書の要素を表すAspose.Wordsオブジェクトです。

### `Node`タイプ {#get-a-node-type}を取得します

[Node](https://reference.aspose.com/words/java/com.aspose.words/node/)クラスは異なるノードを区別するのに十分ですが、Aspose.Wordsは特定のタイプのノードの選択など、いくつかのAPIタスクを簡素化するために[NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/)列挙を提供します。

各ノードのタイプは、[NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType)プロパティを使用して取得できます。 このプロパティは**NodeType**列挙値を返します。 たとえば、**Paragraph**クラスで表される段落ノードは**NodeType**.**Paragraph**を返し、**Table**クラスで表されるテーブルノードは**NodeType**.**Table**を返します。

次の例は、**NodeType**列挙体を使用してノード型を取得する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## ドキュメントツリーナビゲーション {#document-tree-navigation}

Aspose.Wordsはドキュメントをノードツリーとして表し、ノード間を移動できます。 このセクションでは、Aspose.Words内のドキュメントツリーを探索してナビゲートする方法について説明します。

前に示したサンプルドキュメントをドキュメントエクスプローラーで開くと、ノードツリーはAspose.Wordsで表されているとおりに表示されます。

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

サンプルプロジェクト"Document Explorer"を学ぶことができます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### ドキュメントノード関係 {#document-nodes-relationships}

ツリー内のノードは、それらの間の関係を持っています:

- 別のノードを含むノードは*parent.*です
- 親ノードに含まれるノードは、同じ親の*child.*子ノードであり、*sibling*ノードである。
- *root*ノードは常に[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)ノードです。

他のノードを含むことができるノードは[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)クラスから派生し、すべてのノードは最終的に[Node](https://reference.aspose.com/words/java/com.aspose.words/node/)クラスから派生します。 これらの2つの基本クラスは、ツリー構造のナビゲーションと変更のための一般的なメソッドとプロパティを提供します。

次のUMLオブジェクト図は、サンプルドキュメントのいくつかのノードと、parent、child、およびsiblingプロパティを介した相互の関係を示しています:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### ドキュメントはノード所有者です

スタイルやリストなどの重要な文書全体の構造が**Document**ノードに格納されるため、ノードはツリーから作成または削除されたばかりであっても、常に特定のドキ たとえば、各段落にはドキュメントに対してグローバルに定義されたスタイルが割り当てられているため、**Document**なしで**Paragraph**を持つことはできません。 このルールは、新しいノードを作成するときに使用されます。 新しい**Paragraph**をDOMに直接追加するには、コンストラクタに渡されるdocumentオブジェクトが必要です。

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument)プロパティは、ノードが属するドキュメントを返します。

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用して新しい段落を作成する場合、ビルダーには常に[DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document)プロパティを介してリンクされた**Document**クラスがあります。

次のコード例は、ノードを作成するときに、そのノードを所有するドキュメントが常に定義されることを示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### 親ノード

各ノードには[ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode)プロパティで指定された親があります。 次の場合、ノードには親ノードがありません。**ParentNode**はnullです。:

- ノードは作成されたばかりで、まだツリーに追加されていません。
- ノードがツリーから削除されました。
- これは、常にnullの親ノードを持つルート**Document**ノードです。

ノードを親から削除するには、[Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove)メソッドを呼び出します。次のコード例は、親ノードにアクセスする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### 子ノード

[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)の子ノードにアクセスする最も効率的な方法は、それぞれ最初と最後の子ノードを返す[FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild)プロパティと[LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild)プロパティを使用することです。[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)の子ノードにアクセスする最も効率的な方法は、[FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild)プロパティと[LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild)プロパティを使用することです。 子ノードがない場合、これらのプロパティは*null*を返します。

**CompositeNode**

ノードに子がない場合、**ChildNodes**プロパティは空のコレクションを返します。 [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes)プロパティを使用して、**CompositeNode**に子ノードが含まれているかどうかを確認できます。

次のコード例は、`ChildNodes`コレクションによって提供される列挙子を使用して、`CompositeNode`の直接の子ノードを列挙する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

次のコード例は、インデックス付きアクセスを使用して`CompositeNode`の直接の子ノードを列挙する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### 兄弟ノード

それぞれ[PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling)プロパティと[NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling)プロパティを使用して、特定のノードの直前または後続のノードを取得できます。 ノードがその親の最後の子である場合、**NextSibling**プロパティは*null*です。 逆に、ノードがその親の最初の子である場合、**PreviousSibling**プロパティは*null*です。

次のコード例は、複合ノードのすべての直接および間接の子ノードを効率的に訪問する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### 子ノードと親ノードへの型指定されたアクセス

これまでは、基本型の1つである**Node**または**CompositeNode**を返すプロパティについて説明しました。 ただし、**Run**や**Paragraph**などの特定のノードクラスに値をキャストする必要がある場合があります。 つまり、合成であるAspose.WordsDOMで作業するときは、キャストから完全に逃げることはできません。

キャストの必要性を減らすために、ほとんどのAspose.Wordsクラスは厳密に型指定されたアクセスを提供するプロパティとコレクションを提供します。 型指定されたアクセスには3つの基本的なパターンがあります:

- 親ノードは、型指定された**FirstXXX**および**LastXXX**プロパティを公開します。 たとえば、**Document**には[FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection)と[LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection)のプロパティがあります。 同様に、**Table**には[FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow)、[LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow)などのプロパティがあります。
- 親ノードは、[Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections)、[Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs)などの型指定された子ノードのコレクションを公開します。
- 子ノードは、[Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph)、[Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection)などの親への型指定されたアクセスを提供します。

型指定されたプロパティは、[Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode)と[CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)から継承された汎用プロパティよりも簡単にアクセスできる便利なショートカットにすぎません。

次のコード例は、型指定されたプロパティを使用してドキュメントツリーのノードにアクセスする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
