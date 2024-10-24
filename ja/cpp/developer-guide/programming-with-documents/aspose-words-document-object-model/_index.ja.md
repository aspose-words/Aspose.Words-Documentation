---
title: Aspose.WordsC++のドキュメントオブジェクトモデル(DOM)
second_title: C++の場合Aspose.Words
articleTitle: Aspose.Wordsドキュメントオブジェクトモデル(DOM)
linktitle: Aspose.Wordsドキュメントオブジェクトモデル(DOM)
type: docs
description: "ドキュメントオブジェクトモデル(DOM)は、Word文書のメモリ内表現です。 C++を使用してWord文書の内容と書式を読み取り、操作し、変更します。"
weight: 10
url: /ja/cpp/aspose-words-document-object-model/
---

Aspose.Wordsドキュメントオブジェクトモデル(DOM)は、Word文書のメモリ内表現です。 Aspose.WordsDOMを使用すると、Word文書の内容と書式をプログラムで読み取り、操作、および変更できます。

このセクションでは、Aspose.WordsDOMの主なクラスとその関係について説明します。 Aspose.WordsDOMクラスを使用することで、文書要素と書式設定へのプログラムによるアクセスを取得できます。

## ドキュメントオブジェクトツリー{#create-a-document-objects-tree}の作成

ドキュメントがAspose.WordsDOMに読み込まれると、オブジェクトツリーが構築され、ソースドキュメントの異なるタイプの要素には、さまざまなプロパティを持つ独自のDOMツリーオブジェクトがあります。

### ビルドドキュメントノードツリー{#build-document-nodes-tree}

Aspose.WordsがWord文書をメモリに読み込むと、さまざまな文書要素を表すさまざまな型のオブジェクトが作成されます。 テキスト、段落、表、またはセクションのすべての実行はノードであり、ドキュメント自体もノードです。 Aspose.Wordsは、すべてのドキュメントノード型のクラスを定義します。

Aspose.Wordsのドキュメントツリーは、複合デザインパターンに従います:

- すべてのノードクラスは、最終的にAspose.Wordsドキュメントオブジェクトモデルの基本クラスである[Node](https://reference.aspose.com/words/cpp/aspose.words/node/)クラスから派生します。
- **Section**や**Paragraph**などの他のノードを含むことができるノードは、[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)クラスから派生し、**Node**クラスから派生します。

下の図は、Aspose.Wordsドキュメントオブジェクトモデル(DOM)のノードクラス間の継承を示しています。 抽象クラスの名前は斜体で表示されます。

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.WordsDOMには、ドキュメント内の外観とスタイルをカスタマイズするために使用される[Style](https://reference.aspose.com/words/cpp/aspose.words/style/)や[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)などの非ノードクラスも含まれています。 これらのクラスは、`Node`クラスから継承されていないため、この図には示されていません。

{{% /alert %}}

例を見てみましょう。 次の画像は、さまざまな種類のコンテンツを含むMicrosoft Wordドキュメントを示しています。

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

上記のドキュメントをAspose.WordsDOMに読み込むと、以下のスキーマに示すように、オブジェクトのツリーが作成されます。

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), また、図上の他のすべての楕円は、Word文書の要素を表すAspose.Wordsオブジェクトです。

### `Node`タイプ{#get-a-node-type}を取得します

[Node](https://reference.aspose.com/words/cpp/aspose.words/node/)クラスは異なるノードを区別するのに十分ですが、Aspose.Wordsは特定のタイプのノードの選択など、いくつかのAPIタスクを簡素化するために[NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/)列挙を提供します。

各ノードのタイプは、[NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/)プロパティを使用して取得できます。 このプロパティは、**NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**と、**Table** class returns **NodeType**.**Table**で表されるテーブルノードを返します。

次の例は、**NodeType**列挙体を使用してノード型を取得する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## ドキュメントツリーナビゲーション{#document-tree-navigation}

Aspose.Wordsはドキュメントをノードツリーとして表し、ノード間を移動できます。 このセクションでは、Aspose.Words内のドキュメントツリーを探索してナビゲートする方法について説明します。

前に示したサンプルドキュメントをドキュメントエクスプローラーで開くと、ノードツリーはAspose.Wordsで表されているとおりに表示されます。

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### ドキュメントノード関係{#document-nodes-relationships}

ツリー内のノードは、それらの間の関係を持っています:

- 別のノードを含むノードは*parent.*です
- 親ノードに含まれるノードは、同じ親の*child.*子ノードであり、*sibling*ノードである。
- *root*ノードは常に[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)ノードです。

他のノードを含むことができるノードは[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode)クラスから派生し、すべてのノードは最終的に[Node](https://reference.aspose.com/words/cpp/aspose.words/node/)クラスから派生します。 これらの2つの基本クラスは、ツリー構造のナビゲーションと変更のための一般的なメソッドとプロパティを提供します。

次のUMLオブジェクト図は、サンプルドキュメントの複数のノードと、parent、child、およびsiblingプロパティを介した相互の関係を示しています:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### ドキュメントはノード所有者です

スタイルやリストなどの重要な文書全体の構造が**Document**ノードに格納されるため、ノードはツリーから作成または削除されたばかりであっても、常に特定のドキ たとえば、各段落にはドキュメントに対してグローバルに定義されたスタイルが割り当てられているため、**Document**なしで**Paragraph**を持つことはできません。 このルールは、新しいノードを作成するときに使用されます。 新しい**Paragraph**をDOMに直接追加するには、コンストラクタに渡されるdocumentオブジェクトが必要です。

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/)プロパティは、ノードが属するドキュメントを返します。

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)を使用して新しい段落を作成する場合、ビルダーには常に[DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/)プロパティを介してリンクされた**Document**クラスがあります。

次のコード例は、ノードを作成するときに、そのノードを所有するドキュメントが常に定義されることを示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### 親ノード

各ノードには[ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/)プロパティで指定された親があります。 次の場合、ノードには親ノードがありません。**ParentNode**はnullです。:

- ノードは作成されたばかりで、まだツリーに追加されていません。
- ノードがツリーから削除されました。
- これは、常にnullの親ノードを持つルート**Document**ノードです。

ノードを親から削除するには、[Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/)メソッドを呼び出します。次のコード例は、親ノードにアクセスする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### 子ノード

[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)の子ノードにアクセスする最も効率的な方法は、それぞれ最初と最後の子ノードを返す[FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/)プロパティと[LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/)プロパティを使用することです。[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)の子ノードにアクセスする最も効率的な方法は、[FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/)プロパティと[LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/)プロパティを使用することです。 子ノードがない場合、これらのプロパティは*null*を返します。

**CompositeNode**

ノードに子がない場合、**ChildNodes**プロパティは空のコレクションを返します。 [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/)プロパティを使用して、**CompositeNode**に子ノードが含まれているかどうかを確認できます。

次のコード例は、`ChildNodes`コレクションによって提供される列挙子を使用して、`CompositeNode`の直接の子ノードを列挙する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

次のコード例は、インデックス付きアクセスを使用して`CompositeNode`の直接の子ノードを列挙する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### 兄弟ノード

それぞれ[PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/)プロパティと[NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/)プロパティを使用して、特定のノードの直前または後続のノードを取得できます。 ノードがその親の最後の子である場合、**NextSibling**プロパティは*null*です。 逆に、ノードが親の最初の子である場合、**PreviousSibling**プロパティは*null*になります。

次のコード例は、複合ノードのすべての直接および間接の子ノードを効率的に訪問する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### 子ノードと親ノードへの型指定されたアクセス

これまでは、基本型の1つである**Node**または**CompositeNode**を返すプロパティについて説明しました。 ただし、**Run**や**Paragraph**などの特定のノードクラスに値をキャストする必要がある場合があります。 つまり、コンポジットであるAspose.WordsDOMを操作するときは、キャストから完全に逃れることはできません。

キャストの必要性を減らすために、ほとんどのAspose.Wordsクラスは厳密に型指定されたアクセスを提供するプロパティとコレクションを提供します。 型指定されたアクセスには3つの基本的なパターンがあります:

- 親ノードは、型指定された**FirstXXX**および**LastXXX**プロパティを公開します。 たとえば、**Document**には[FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/)と[LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/)のプロパティがあります。 同様に、**Table**には[FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/)、[LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/)などのプロパティがあります。
- 親ノードは、[Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)、[Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/)などの型指定された子ノードのコレクションを公開します。
- 子ノードは、[Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/)、[Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/)などの親への型指定されたアクセスを提供します。

型指定されたプロパティは、[Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/)と[CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/)から継承された汎用プロパティよりも簡単にアクセスできる便利なショートカットにすぎません。

次のコード例は、型指定されたプロパティを使用してドキュメントツリーのノードにアクセスする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
