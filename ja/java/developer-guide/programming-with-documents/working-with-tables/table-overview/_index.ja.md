---
title: テーブルの概要
second_title: Aspose.Words お問い合わせ Java
articleTitle: テーブルの概要
linktitle: テーブルの概要
description: "セル、行、列などのテーブルとコンポーネントを操作 Aspose.Words お問い合わせ Javaお問い合わせ テーブルでの作業方法 Javaお問い合わせ"
type: docs
weight: 10
url: /ja/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words PDF、HTML、さまざまな形式の文書のサーバー側処理用に設計されたクラスライブラリです。 Microsoft Word フォーマットと他 – 次の方法でテーブルをサポート:

* 文書内の表は、オープン/セーブおよび変換中に保存されます。
*テーブル、コンテンツ、およびそのフォーマットを編集し、テーブルをサポートする形式でファイルに変更をエクスポートすることができます。

この記事では、テーブルの構造、セル、行、および列のサポートについて詳しく説明します。 Aspose.Words, そのようなテーブルで作業する詳細。

## テーブルの構造

既に述べたように、テーブルはそのような要素から構成されます **Cell**, **Row** そして、 **Column**お問い合わせ これらは、文書の形式に関係なく、一般的にすべてのテーブルに共通する概念です。

これはテーブルの一般的な例です。 Microsoft Word ドキュメント:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### テーブルノード

読み込まれた文書からテーブル Aspose.Words として輸入されます **テーブルノード**お問い合わせ 表は、次の子として見つけることができます。

- メインテキスト
- コメントや脚注などのインラインストーリー
- 別のテーブル内でテーブルがネストされるときの細胞

{{% alert color="primary" %}}

表は他の表の内側に任意の深さにネストすることができます。

{{% /alert %}}

### テーブルコンテンツ

テーブルノードには、実際のコンテンツが含まれていません。代わりに、コンテンツを構成する他のノードのコンテナです。

- - - **Table** 多く含まれている **Row** ノード。 表は、すべての通常のノード要素を提供し、文書内のテーブルを自由に移動、変更、削除することができます。
- - - **Row** 単一のテーブル行を表し、多くの **Cell** ノード。 その他、 **Row** 高さやアライメントなど、行の表示方法を定義する要素を提供します。
- - - **Cell** 何が含まれているか true テーブルに表示されている内容で、 **Paragraph** 他のブロックレベルノード。 さらに、セルはネストされたテーブルを含むことができます。

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

ドキュメント内のテーブルノードの構造をドキュメントで確認できます。 **DocumentExplorer**お問い合わせ

{{% /alert %}}

### 表の後の空のパラグラフ

上記の画像は、ドキュメントには複数の行の表が含まれていることを示しています。これは、2つのセルで構成されます。 2つのセルのそれぞれには、セルのフォーマットされたテキストのコンテナである段落が含まれています。

また、文書内の2つの連続テーブルを分離することは、テーブルの後に少なくとも1つの空の段落を必要とすることに注意する価値もあります。 このような段落がなければ、連続したテーブルが1つにまとめられます。 この動作は両方とも同じです Microsoft Word そして、 Aspose.Wordsお問い合わせ

Aspose.Words 表に関連したクラスがいくつかあります。 [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), その他。

## お問い合わせ

* [Aspose.Words Document Object Model (DOM)](/words/ja/java/aspose-words-document-object-model/)
* [ドキュメント内のノードの論理レベル](/words/ja/java/logical-levels-of-nodes-in-a-document/)
