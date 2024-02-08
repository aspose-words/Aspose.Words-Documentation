---
title: Aspose.Words DOM
second_title: Python via .NET用Aspose.Words
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) は、Word ドキュメントのメモリ内表現です。 Python を使用して、Word ドキュメントのコンテンツと書式設定を読み取り、操作、変更します。"
weight: 10
url: /ja/python-net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) は、Word ドキュメントのメモリ内表現です。 Aspose.Words DOM を使用すると、Word ドキュメントのコンテンツと書式設定をプログラムで読み取り、操作、変更できます。

このセクションでは、Aspose.Words DOM の主要なクラスとそれらの関係について説明します。 Aspose.Words DOM クラスを使用すると、ドキュメント要素と書式設定にプログラムからアクセスできます。

## `Document` オブジェクト ツリー {#create-a-document-objects-tree} の作成

ドキュメントが Aspose.Words DOM に読み込まれると、オブジェクト ツリーが構築され、ソース ドキュメントのさまざまなタイプの要素がさまざまなプロパティを持つ独自の DOM ツリー オブジェクトを持ちます。

### ドキュメント ノード ツリーの構築 {#build-document-nodes-tree}

Aspose.Words が Word 文書をメモリに読み取ると、さまざまな文書要素を表すさまざまなタイプのオブジェクトが作成されます。テキスト、段落、表、セクションのすべてがノードであり、文書自体もノードです。 Aspose.Words は、ドキュメント ノード タイプごとにクラスを定義します。

Aspose.Words のドキュメント ツリーは、複合デザイン パターンに従います。

- すべてのノード クラスは、最終的には Aspose.Words Document Object Model の基本クラスである [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) クラスから派生します。
- [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) や [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) など、他のノードを含むことができるノードは [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) クラスから派生し、[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) クラスは [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) クラスから派生します。

以下の図は、Aspose.Words Document Object Model (DOM) のノード クラス間の継承を示しています。抽象クラスの名前は斜体で表示されます。

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="アスポーズワードダム" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM には、ドキュメント内の外観やスタイルをカスタマイズするために使用される [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) や [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) などの非ノード クラスも含まれています。これらのクラスは、[Node](https://reference.aspose.com/words/python-net/aspose.words/node/) クラスから継承されていないため、この図には示されていません。

{{% /alert %}}

例を見てみましょう。次の図は、さまざまなタイプのコンテンツを含む Microsoft Word ドキュメントを示しています。

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="文書例-aspose-words" style="width:700px"/>

上記のドキュメントを Aspose.Words DOM に読み込むと、以下のスキーマに示すようにオブジェクトのツリーが作成されます。

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="ドム・アスポーズ・ワード" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/)、[Section](https://reference.aspose.com/words/python-net/aspose.words/section/)、[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)、[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)、[Run](https://reference.aspose.com/words/python-net/aspose.words/run/)、および図上のその他すべての省略記号は、Word ドキュメントの要素を表す Aspose.Words オブジェクトです。

### `Node` タイプ {#get-a-node-type} を取得する

[Node](https://reference.aspose.com/words/python-net/aspose.words/node/) クラスは異なるノードを相互に区別するのに十分ですが、Aspose.Words は特定のタイプのノードの選択など、一部の API タスクを簡素化する [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) 列挙を提供します。

各ノードのタイプは、[Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) プロパティを使用して取得できます。このプロパティは、[NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) 列挙値を返します。たとえば、[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) クラスで表される段落ノードは [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) を返し、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) クラスで表される表ノードは [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table) を返します。

次の例は、[NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) 列挙を使用してノード タイプを取得する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## ドキュメント ツリー ナビゲーション {#document-tree-navigation}

Aspose.Words はドキュメントをノード ツリーとして表現し、ノード間を移動できるようにします。このセクションでは、Aspose.Words でドキュメント ツリーを探索および移動する方法について説明します。

前に示したサンプル ドキュメントをドキュメント エクスプローラーで開くと、ノード ツリーが Aspose.Words で表現されているとおりに表示されます。

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="ドキュメントインドキュメントエクスプローラー" style="width:680px"/>

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples)上でサンプルプロジェクト「Document Explorer」を学習できます。

{{% /alert %}}

### ドキュメント ノードの関係 {#document-nodes-relationships}

ツリー内のノード間には次のような関係があります。

- 別のノードを含むノードは *parent.*
- 親ノードに含まれるノードが *child.* である同じ親の子ノードは *sibling* ノードです。
- *root* ノードは常に [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ノードです。

他のノードを含むことができるノードは [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) クラスから派生し、すべてのノードは最終的に [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) クラスから派生します。これら 2 つの基本クラスは、ツリー構造のナビゲーションと変更のための共通のメソッドとプロパティを提供します。

次の UML オブジェクト図は、サンプル ドキュメントのいくつかのノードと、親、子、兄弟プロパティを介したそれらの相互関係を示しています。

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="ドキュメントノード関係-aspose-words" style="width:370px"/>

#### ドキュメントはノード所有者です

スタイルやリストなどの重要なドキュメント全体の構造が [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ノードに格納されるため、ノードは常に特定のドキュメントに属します。これは、ノードが作成されたばかりか、ツリーから削除されたばかりであってもです。たとえば、各段落にはドキュメントに対してグローバルに定義されたスタイルが割り当てられているため、[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) なしで [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) を作成することはできません。このルールは、新しいノードを作成するときに使用されます。新しい [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) を DOM に直接追加するには、ドキュメント オブジェクトをコンストラクターに渡す必要があります。

{{% alert color="primary" %}}

[Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) プロパティは、ノードが属するドキュメントを返します。

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用して新しい段落を作成する場合、ビルダーには常に、[DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) プロパティを通じてそれにリンクされた [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスがあります。

次のコード例は、ノードを作成するときに、そのノードを所有するドキュメントが常に定義されることを示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### 親ノード

各ノードには、[parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) プロパティで指定された親があります。次の場合、ノードには親ノードがありません。つまり、[parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) は *None* です。

- ノードは作成されたばかりで、まだツリーに追加されていません。
- ノードがツリーから削除されました。
- これは、常に None の親ノードを持つルート [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ノードです。

[Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) メソッドを呼び出すことで、親からノードを削除できます。次のコード例は、親ノードにアクセスする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### 子ノード

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) の子ノードにアクセスする最も効率的な方法は、最初と最後の子ノードをそれぞれ返す [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) プロパティと [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) プロパティを使用することです。子ノードがない場合、これらのプロパティは *None* を返します。

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) は、子ノードへのインデックス付きまたは列挙型のアクセスを可能にする [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) コレクションも提供します。 [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) メソッドは、ノードのライブ コレクションを返します。つまり、ノードが削除または追加されるなど、ドキュメントが変更されるたびに、**get_child_nodes** コレクションが自動的に更新されます。

ノードに子がない場合、**get_child_nodes** メソッドは空のコレクションを返します。 [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) プロパティを使用して、[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) に子ノードが含まれているかどうかを確認できます。

次のコード例は、**get_child_nodes** コレクションによって提供される列挙子を使用して [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) の直接の子ノードを列挙する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### 兄弟ノード

[previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) プロパティと [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) プロパティをそれぞれ使用して、特定のノードの直前または直後のノードを取得できます。ノードがその親の最後の子である場合、[next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) プロパティは *None* です。逆に、ノードがその親の最初の子である場合、[previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) プロパティは *None* です。

次のコード例は、複合ノードのすべての直接および間接の子ノードに効率的にアクセスする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### 子ノードおよび親ノードへの型付きアクセス {#typed-access-to-child-and-parent-nodes}

これまで、基本タイプの 1 つである [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) または [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) を返すプロパティについて説明してきました。ただし、場合によっては、[Run](https://reference.aspose.com/words/python-net/aspose.words/run/) や [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) などの特定のノード クラスに値をキャストする必要がある場合があります。つまり、複合である Aspose.Words DOM を使用する場合、キャストから完全に逃れることはできません。

キャストの必要性を減らすために、ほとんどの Aspose.Words クラスは、厳密に型指定されたアクセスを提供するプロパティとコレクションを提供します。型付きアクセスには 3 つの基本パターンがあります。

- 親ノードは、型指定された **first_XXX** および **last_XXX** プロパティを公開します。たとえば、[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) には [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) プロパティと [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) プロパティがあります。同様に、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) には [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/)、[last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) などのプロパティがあります。
- 親ノードは、[Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/)、[Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) などの子ノードの型付きコレクションを公開します。
- 子ノードは、[Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/)、[Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) などの親ノードへの型付きアクセスを提供します。

型付きプロパティは単なる便利なショートカットであり、[Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) や [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) から継承された汎用プロパティよりも簡単にアクセスできる場合があります。

次のコード例は、型付きプロパティを使用してドキュメント ツリーのノードにアクセスする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
