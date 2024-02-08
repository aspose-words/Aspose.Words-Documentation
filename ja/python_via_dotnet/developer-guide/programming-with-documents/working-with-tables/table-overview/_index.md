---
title: テーブルの概要
second_title: Python用Aspose.Words
articleTitle: テーブルの概要
linktitle: テーブルの概要
description: "Aspose.Words for Python のセル、行、列などのテーブルとそのコンポーネントを操作します。 Python でテーブルを操作する方法。"
type: docs
weight: 10
url: /ja/python-net/table-overview/
---

Aspose.Words は、PDF、HTML、さまざまな Microsoft Word 形式などのさまざまな形式のドキュメントをサーバー側で処理するために設計されたクラス ライブラリであり、次の方法でテーブルをサポートします。

* ドキュメント内のテーブルは、開く/保存するとき、および変換中に保持されます。
* 表、コンテンツ、およびその書式設定を編集し、その変更を表をサポートする形式でファイルにエクスポートすることが可能です

この記事では、Aspose.Words でサポートされるテーブル構造、セル、行、列、およびそのようなテーブルの操作の詳細について学びます。

## テーブル構造

すでに述べたように、テーブルは **Cell**、**Row**、**Column** などの要素で構成されます。これらは、ドキュメントの形式に関係なく、すべてのテーブル全般に共通する概念です。

これは、Microsoft Word ドキュメントにあるテーブルの一般的な例です。

![tables-overview-aspose-words-python-1](/words/python-net/table-overview/tables-overview-1.png)

### テーブルノード

Aspose.Words にロードされたドキュメントのテーブルは、**テーブルノード** としてインポートされます。テーブルは次の子として見つかります。

- 本文
- コメントや脚注などのインラインストーリー
- テーブルが別のテーブル内にネストされている場合のセル

{{% alert color="primary" %}}

テーブルは他のテーブル内に任意の深さまでネストできることに注意してください。

{{% /alert %}}

### テーブルの内容

テーブル ノードには実際のコンテンツは含まれていません。代わりに、コンテンツを構成する他のノードのコンテナーです。

- **Table** には多くの **Row** ノードが含まれています。テーブルには通常のノード要素がすべて含まれており、ドキュメント内のテーブルを自由に移動、変更、削除できます。
- **Row** は単一のテーブル行を表し、多くの **Cell** ノードが含まれます。さらに、**Row** は、高さや配置など、行の表示方法を定義する要素を提供します。
- **Cell** は、テーブルに表示される true コンテンツを含むもので、**Paragraph** およびその他のブロック レベルのノードで構成されます。さらに、セルにはネストされたテーブルを含めることができます。

![tables-overview-aspose-words-python-2](/words/python-net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

**DocumentExplorer** を使用して、ドキュメント内のテーブル ノードの構造を確認できます。

{{% /alert %}}

### 表の後の空の段落

上の図は、文書に複数の行からなる表が含まれており、その表が 2 つのセルで構成されていることを示しています。 2 つのセルにはそれぞれ、セルの書式設定されたテキストのコンテナーである段落が含まれています。

文書内で連続する 2 つの表を区切るには、表の後に少なくとも 1 つの空の段落が必要であることにも注意してください。このような段落がないと、連続する表が 1 つに結合されてしまいます。この動作は Microsoft Word と Aspose.Words の両方で同じです。

Aspose.Words では、テーブルに関連するすべてのクラスとプロパティが [Aspose.Words.Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/) モジュールに含まれています。

## 関連項目

* [Aspose.Words Document Object Model (DOM)](/words/ja/python-net/aspose-words-document-object-model/)
* [ドキュメント内のノードの論理レベル](/words/ja/python-net/logical-levels-of-nodes-in-a-document/)