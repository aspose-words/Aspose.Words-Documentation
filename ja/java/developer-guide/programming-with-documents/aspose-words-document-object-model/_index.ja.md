---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words お問い合わせ Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model ( )DOM) は、Word文書の非記憶表現です。 読み、操作し、Word文書のコンテンツとフォーマットを変更して使用 Javaお問い合わせ"
weight: 10
url: /ja/java/aspose-words-document-object-model/
---

ザ・オブ・ザ・ Aspose.Words Document Object Model ( )DOM) は、Word文書の非記憶表現です。 ザ・オブ・ザ・ Aspose.Words DOM Word文書のコンテンツやフォーマットをプログラム的に読み、操作、変更することができます。

このセクションでは、メインクラスを説明します Aspose.Words DOM そして、その関係。 ご利用にあたって Aspose.Words DOM クラスは、ドキュメント要素と書式へのプログラム的なアクセスを取得できます。

## ドキュメントの作成 オブジェクトツリー {#create-a-document-objects-tree}

ドキュメントが読み込まれるとき Aspose.Words <span notrans="<span notrans=" DOM"=""></span>????? その後、オブジェクトツリーが構築され、ソース文書の異なる種類の要素が独自のものを持っています DOM さまざまなプロパティを持つツリーオブジェクト。

### ドキュメントノードツリーの構築 {#build-document-nodes-tree}

いつか Aspose.Words Word 文書をメモリに読み込み、さまざまなドキュメント要素を表すさまざまなタイプのオブジェクトを作成します。 テキスト、段落、テーブル、セクションの各実行はノードであり、ドキュメント自体もノードです。 Aspose.Words すべてのドキュメントノードタイプのクラスを定義します。

ドキュメントツリー Aspose.Words 合成の設計パターンに続いて下さい:

- 究極のすべてのノードクラスは、 [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) ベースクラスであるクラス Aspose.Words Document Object Modelお問い合わせ
- 他のノードを含むノード(例えば、 **Section** または **Paragraph**, 由来の由来 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) から派生する順番にあるクラス **Node** クラス。

以下の図は、ノードクラスの継承を示しています Aspose.Words Document Object Model ( )DOM)。 抽象クラスの名前は Italics です。

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

ザ・オブ・ザ・ Aspose.Words DOM 非ノードクラスも含んでいます。 [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) または [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), 文書内の外観やスタイルをカスタマイズするために使用されます。 これらのクラスは、継承されていないため、この図では表示されません。 `Node` クラス。

{{% /alert %}}

例を見てみましょう。 次の画像は、 Microsoft Word 異なる種類のコンテンツの文書。

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

上記の文書を読んでいるとき Aspose.Words DOM, 下の図のようにオブジェクトのツリーが作成されます。

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), そして、図上の他のすべての楕円は、 Aspose.Words Word文書の要素を表すオブジェクト。

### お問い合わせ `Node` タイプ: {#get-a-node-type}

しかし、 [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) 各ノードを区別するのに十分なクラスです。 Aspose.Words 提供して下さい [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) 一部を簡素化する列挙 API 特定のタイプのノードを選択します。

各ノードの種類は、各ノードで取得できます。 [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) プロパティ. このプロパティは、 **NodeType** 列挙値。 例えば、並列ノードは、 **Paragraph** クラスリターン **NodeType**お問い合わせ**Paragraph**と表ノードは、 **Table** クラスリターン **NodeType**お問い合わせ**Table**お問い合わせ

次の例では、ノードタイプを取得する方法を示します。 **NodeType** 列挙:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## ドキュメントツリーナビゲーション {#document-tree-navigation}

Aspose.Words ノードツリーとしてドキュメントを表現し、ノード間を移動することができます。 このセクションでは、ドキュメントツリーを探索およびナビゲートする方法について説明します Aspose.Wordsお問い合わせ

サンプル文書を開くと、先に提示されたドキュメントエクスプローラでは、ノードツリーはそのままに表現されます。 Aspose.Wordsお問い合わせ

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

サンプルプロジェクト「ドキュメントエクスプローラ」を学習できます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer)お問い合わせ

{{% /alert %}}

### ドキュメントノードの関係 {#document-nodes-relationships}

ツリー内のノードは、それらの間に関係があります。

- 他のノードを含むノードは、 *parent.*
- - - 親ノードに含まれるノードは、 *child.* 同じ親の子ノードは *sibling* ノード。
- ザ・ *root* ノードは常に [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ノード。

他のノードを derive から含むことができるノード [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) クラス、およびすべてのノードは、最終的に由来する [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) クラス。 これらの2つのベースクラスは、ツリー構造のナビゲーションと変更のための一般的な方法と特性を提供します。

次の UML オブジェクト図は、サンプル文書の複数のノードと、親、子、および兄弟のプロパティを介して互いに関係を示しています。

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### ドキュメントはNodeの所有者です

ノードは、スタイルやリストなどの重要な文書全体の構造が保存されているため、ツリーから作成または削除された場合でも、常に特定の文書に属しています。 **Document** ノード。 たとえば、持てることができない **Paragraph** なし **Document** 各段落には、文書のグローバルに定義されている割り当てられたスタイルがあります。 このルールは、新しいノードを作成するときに使用されます。 新規追加 **Paragraph** 直接に DOM コンストラクタに渡されるドキュメントオブジェクトが必要です。

{{% alert color="primary" %}}

ザ・オブ・ザ・ [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) プロパティは、ノードが属するドキュメントを返します。

{{% /alert %}}

新しい段落を作成するとき [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), ビルダーは常にビルダーを持っています **Document** それをリンクしたクラス [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) プロパティ.

次のコードの例では、ノードを作成するときに、ノードを所有するドキュメントが常に定義されていることを示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### 親ノード

各ノードは、指定した親を持っています [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) プロパティ. ノードには、親ノードがない、つまり、 **ParentNode** 次の例では null です。

- - - ノードが作成され、まだツリーに追加されていない。
- - - ノードはツリーから削除されました。
- - - これは根本です **Document** 常に null の親ノードを持つノード。

親からノードを呼び出して削除できます。 [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) メソッド。 以下のコードの例では、親ノードへのアクセス方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### 子供のノード

子供のノードにアクセスするための最も効率的な方法 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) お問い合わせ [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) そして、 [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) それぞれ最初の子ノードと最後の子ノードを返すプロパティ。 子ノードがない場合、これらのプロパティは戻ります *null*お問い合わせ

**CompositeNode** また提供します [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) コレクションは、子ノードへのアクセスをインデックス化または列挙することを可能にします。 ザ・オブ・ザ・ **ChildNodes** プロパティはノードのライブコレクションです。つまり、ノードが削除または追加されるなど、ドキュメントが変更されるたびに、 **ChildNodes** 収集は自動的に更新されます。

ノードが子を持たない場合、 **ChildNodes** プロパティは空のコレクションを返します。 かどうか確認できます **CompositeNode** どの子ノードも、 [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) プロパティ.

次のコードの例では、即時の子ノードを列挙する方法を示します。 `CompositeNode` 提供の列挙器を使用して `ChildNodes` コレクション:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

次のコードの例では、即時の子ノードを列挙する方法を示します。 `CompositeNode` インデックスアクセスを使用する:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### 兄弟ノード

特定のノードをすぐに優先またはフォローするノードをすぐに取得できます。 [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) そして、 [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) それぞれプロパティ。 ノードが親の最後の子である場合、 **NextSibling** プロパティは *null*お問い合わせ 逆に、ノードがその親の最初の子である場合、 **PreviousSibling** プロパティは *null*お問い合わせ

次のコードの例では、コンポジットノードの直接および間接的な子ノードを効率的に訪問する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### 子どもと両親のノードへのアクセス

これまでのところ、ベースタイプの1つを返すプロパティについて議論しました。 **Node** または **CompositeNode**お問い合わせ しかし、例えば、特定のノードクラスに値を投げる必要がある場合があります。 **Run** または **Paragraph**お問い合わせ つまり、キャスティングから仕事をするときは、完全にキャスティングから離れることはできません。 Aspose.Words DOM, コンポジットです。

鋳造の必要性を減らすため、最も Aspose.Words クラスは、強力なタイプのアクセスを提供するプロパティとコレクションを提供します。 型アクセスの3つの基本パターンがあります。

- 親ノードがtypedを公開 **FirstXXX** そして、 **LastXXX** プロパティ。 例えば、 **Document** お問い合わせ [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) そして、 [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) プロパティ。 同様に、 **Table** のような特性があります [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), その他。
- 親ノードは、以下のような子ノードの種別コレクションを公開します。 [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), その他。
- 子ノードは、その親にタイプされたアクセスを提供します。 [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), その他。

タイプされたプロパティは、単に便利なショートカットで、時々から継承された一般的なプロパティよりも簡単にアクセスできます。 [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) そして、 [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)お問い合わせ

次のコードの例では、typed プロパティを使用してドキュメントツリーのノードにアクセスする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
