---
title: C# の Aspose.Words Document Object Model (DOM)
second_title: .NET用Aspose.Words
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) は、Word ドキュメントのメモリ内表現です。 C# を使用して、Word ドキュメントのコンテンツと書式設定を読み取り、操作、変更します。"
weight: 10
url: /ja/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model (DOM) は、Word ドキュメントのメモリ内表現です。 Aspose.Words DOM を使用すると、Word ドキュメントのコンテンツと書式設定をプログラムで読み取り、操作、変更できます。

このセクションでは、Aspose.Words DOM の主要なクラスとそれらの関係について説明します。 Aspose.Words DOM クラスを使用すると、ドキュメント要素と書式設定にプログラムからアクセスできます。

## `Document` オブジェクト ツリー {#create-a-document-objects-tree} の作成

ドキュメントが Aspose.Words DOM に読み込まれると、オブジェクト ツリーが構築され、ソース ドキュメントのさまざまなタイプの要素が、さまざまなプロパティを持つ独自の DOM ツリー オブジェクトを持ちます。

### ドキュメント ノード ツリーの構築 {#build-document-nodes-tree}

Aspose.Words が Word 文書をメモリに読み取ると、さまざまな文書要素を表すさまざまなタイプのオブジェクトが作成されます。テキスト、段落、表、セクションのすべてがノードであり、文書自体もノードです。 Aspose.Words は、ドキュメント ノード タイプごとにクラスを定義します。

Aspose.Words のドキュメント ツリーは、複合デザイン パターンに従います。

- すべてのノード クラスは、最終的には Aspose.Words Document Object Model の基本クラスである [Node](https://reference.aspose.com/words/net/aspose.words/node/) クラスから派生します。
- **Section** や **Paragraph** など、他のノードを含むことができるノードは [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) クラスから派生し、[CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) クラスは **Node** クラスから派生します。

以下の図は、Aspose.Words Document Object Model (DOM) のノード クラス間の継承を示しています。抽象クラスの名前は斜体で表示されます。

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="アスポーズワードダム" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM には、ドキュメント内の外観やスタイルをカスタマイズするために使用される [Style](https://reference.aspose.com/words/net/aspose.words/style/) や [Font](https://reference.aspose.com/words/net/aspose.words/font/) などの非ノード クラスも含まれています。これらのクラスは、`Node` クラスから継承されていないため、この図には示されていません。

{{% /alert %}}

例を見てみましょう。次の図は、さまざまなタイプのコンテンツを含む Microsoft Word ドキュメントを示しています。

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="文書例-aspose-words" style="width:700px"/>

上記のドキュメントを Aspose.Words DOM に読み込むと、以下のスキーマに示すようにオブジェクトのツリーが作成されます。

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="ドム・アスポーズ・ワード" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/)、[Section](https://reference.aspose.com/words/net/aspose.words/section/)、[Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)、[Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)、[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)、[Run](https://reference.aspose.com/words/net/aspose.words/run/)、および図上のその他すべての省略記号は、Word 文書の要素を表す Aspose.Words オブジェクトです。

### `Node` タイプ {#get-a-node-type} を取得する

[Node](https://reference.aspose.com/words/net/aspose.words/node/) クラスは異なるノードを相互に区別するのに十分ですが、Aspose.Words は特定のタイプのノードの選択など、一部の API タスクを簡素化する [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) 列挙を提供します。

各ノードのタイプは、[NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) プロパティを使用して取得できます。このプロパティは、**NodeType** 列挙値を返します。たとえば、**Paragraph** クラスで表される段落ノードは **NodeType**.**Paragraph** を返し、**Table** クラスで表される表ノードは **NodeType**.**Table** を返します。

次の例は、**NodeType** 列挙を使用してノード タイプを取得する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## ドキュメント ツリー ナビゲーション {#document-tree-navigation}

Aspose.Words はドキュメントをノード ツリーとして表現し、ノード間を移動できるようにします。このセクションでは、Aspose.Words でドキュメント ツリーを探索および移動する方法について説明します。

前に示したサンプル ドキュメントをドキュメント エクスプローラーで開くと、ノード ツリーが Aspose.Words で表現されているとおりに表示されます。

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="ドキュメントインドキュメントエクスプローラー" style="width:680px"/>

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)上でサンプルプロジェクト「Document Explorer」を学習できます。

{{% /alert %}}

### ドキュメントノードの関係 {#document-nodes-relationships}

ツリー内のノード間には次のような関係があります。

- 別のノードを含むノードは *parent.*
- 親ノードに含まれるノードが *child.* である同じ親の子ノードは *sibling* ノードです。
- *root* ノードは常に [Document](https://reference.aspose.com/words/net/aspose.words/document/) ノードです。

他のノードを含むことができるノードは [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) クラスから派生し、すべてのノードは最終的に [Node](https://reference.aspose.com/words/net/aspose.words/node/) クラスから派生します。これら 2 つの基本クラスは、ツリー構造のナビゲーションと変更のための共通のメソッドとプロパティを提供します。

次の UML オブジェクト図は、サンプル ドキュメントのいくつかのノードと、親、子、兄弟プロパティを介したそれらの相互関係を示しています。

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="ドキュメントノード関係-aspose-words" style="width:370px"/>

#### ドキュメントはノード所有者です

スタイルやリストなどの重要なドキュメント全体の構造が **Document** ノードに格納されるため、ノードは常に特定のドキュメントに属します。これは、ノードが作成されたばかりか、ツリーから削除されたばかりであってもです。たとえば、各段落にはドキュメントに対してグローバルに定義されたスタイルが割り当てられているため、**Document** なしで **Paragraph** を作成することはできません。このルールは、新しいノードを作成するときに使用されます。新しい **Paragraph** を DOM に直接追加するには、ドキュメント オブジェクトをコンストラクターに渡す必要があります。

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) プロパティは、ノードが属するドキュメントを返します。

{{% /alert %}}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) を使用して新しい段落を作成する場合、ビルダーには常に、[DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) プロパティを通じてそれにリンクされた **Document** クラスがあります。

次のコード例は、ノードを作成するときに、そのノードを所有するドキュメントが常に定義されることを示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### 親ノード

各ノードには、[ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) プロパティで指定された親があります。次の場合、ノードには親ノードがありません。つまり、**ParentNode** は null です。

- ノードは作成されたばかりで、まだツリーに追加されていません。
- ノードがツリーから削除されました。
- これは、常にヌルの親ノードを持つルート **Document** ノードです。

[Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) メソッドを呼び出すことで、親からノードを削除できます。次のコード例は、親ノードにアクセスする方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### 子ノード

[CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) の子ノードにアクセスする最も効率的な方法は、最初と最後の子ノードをそれぞれ返す [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) プロパティと [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) プロパティを使用することです。子ノードがない場合、これらのプロパティは *null* を返します。

**CompositeNode** は、子ノードへのインデックス付きまたは列挙型のアクセスを可能にする [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) メソッドも提供します。 **ChildNodes** プロパティはノードのライブ コレクションです。つまり、ノードの削除または追加など、ドキュメントが変更されるたびに、**ChildNodes** コレクションが自動的に更新されます。

ノードに子がない場合、**ChildNodes** プロパティは空のコレクションを返します。 [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) プロパティを使用して、**CompositeNode** に子ノードが含まれているかどうかを確認できます。

次のコード例は、`ChildNodes` コレクションによって提供される列挙子を使用して `CompositeNode` の直接の子ノードを列挙する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

次のコード例は、インデックス付きアクセスを使用して `CompositeNode` の直接の子ノードを列挙する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### 兄弟ノード

[PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) プロパティと [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) プロパティをそれぞれ使用して、特定のノードの直前または直後のノードを取得できます。ノードがその親の最後の子である場合、**NextSibling** プロパティは *null* です。逆に、ノードがその親の最初の子の場合、**PreviousSibling** プロパティは *null* になります。

次のコード例は、複合ノードのすべての直接および間接の子ノードに効率的にアクセスする方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### 子ノードおよび親ノードへの型付きアクセス {#typed-access-to-child-and-parent-nodes}

これまで、基本タイプの 1 つである **Node** または **CompositeNode** を返すプロパティについて説明してきました。ただし、場合によっては、**Run** や **Paragraph** などの特定のノード クラスに値をキャストする必要がある場合があります。つまり、複合である Aspose.Words DOM を使用する場合、キャストから完全に逃れることはできません。

キャストの必要性を減らすために、ほとんどの Aspose.Words クラスは、厳密に型指定されたアクセスを提供するプロパティとコレクションを提供します。型付きアクセスには 3 つの基本パターンがあります。

- 親ノードは、型指定された **FirstXXX** および **LastXXX** プロパティを公開します。たとえば、**Document** には [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) プロパティと [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) プロパティがあります。同様に、**Table** には [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/)、[LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) などのプロパティがあります。
- 親ノードは、[Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/)、[Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) などの子ノードの型付きコレクションを公開します。
- 子ノードは、[Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/)、[Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) などの親ノードへの型付きアクセスを提供します。

型付きプロパティは単なる便利なショートカットであり、[Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) や [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) から継承された汎用プロパティよりも簡単にアクセスできる場合があります。

次のコード例は、型付きプロパティを使用してドキュメント ツリーのノードにアクセスする方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
