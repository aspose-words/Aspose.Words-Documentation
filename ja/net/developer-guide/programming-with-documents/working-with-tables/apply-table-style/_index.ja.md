---
title: Word 文書の表スタイルを変更する
second_title: .NET用Aspose.Words
articleTitle: テーブルスタイルを適用
linktitle: テーブルスタイルを適用
description: "高度なテーブルフォーマットC#。 C# を使用してテーブル スタイルを作成します。テーブル スタイル C# を適用します。"
type: docs
weight: 80
url: /ja/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

表スタイルは、表に簡単に適用できる一連の書式設定を定義します。枠線、網掛け、配置、フォントなどの書式設定を表スタイルで設定し、多くの表に適用して一貫した外観を実現できます。

Aspose.Words は、テーブル スタイルのテーブルへの適用と、任意のテーブル スタイルのプロパティの読み取りをサポートします。表のスタイルは、ロードおよび保存中に次の方法で保持されます。

- DOCX および WordML 形式の表スタイルは、これらの形式にロードおよび保存するときに保持されます。
- DOC 形式でロードおよび保存する場合、テーブル スタイルは保持されます (ただし、他の形式では保持されません)。
- 他の形式にエクスポートする場合、レンダリングまたは印刷する場合、表スタイルは表内の直接書式設定に拡張されるため、すべての書式設定が保持されます。

## 表スタイルを作成する

ユーザーは新しいスタイルを作成し、スタイル コレクションに追加できます。 [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/) メソッドは、新しいテーブル スタイルを作成するために使用されます。

次のコード例は、新しいユーザー定義のテーブル スタイルを作成する方法を示しています。

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## 既存の表スタイルをコピーする

必要に応じて、`AddCopy` メソッドを使用して、特定のドキュメントに既に存在する表スタイルをスタイル コレクションにコピーできます。

このコピーでは、リンクされたスタイルもコピーされることに注意してください。

次のコード例は、あるドキュメントから別のドキュメントにスタイルをインポートする方法を示しています。

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## 既存の表スタイルを適用する

Aspose.Words は、[Style](https://reference.aspose.com/words/net/aspose.words/style/) クラスから継承された [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) を提供します。 **TableStyle** を使用すると、ユーザーはシェーディング、パディング、インデント、[CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/)、[Font](https://reference.aspose.com/words/net/aspose.words/style/font/) などのさまざまなスタイル オプションを簡単に適用できます。

さらに、Aspose.Words は、[Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/)、[StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/)、[StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/)、[StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) のどのテーブル スタイルを使用するかを指定するための [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) クラスと `Table` クラスのいくつかのプロパティを提供します。

Aspose.Words は、テーブル スタイルが割り当てられたテーブルの一部の領域に適用される特別な書式設定を表す [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) クラスと、**ConditionalStyle** オブジェクトのコレクションを表す [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) も提供します。このコレクションには、[ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) 列挙型の値ごとに 1 つの項目を表す項目の永続的なセットが含まれています。 **ConditionalStyleType** 列挙は、表スタイルで条件付き書式を定義できるすべての可能な表領域を定義します。

この場合、条件付き書式設定は、ConditionalStyleType 列挙型で定義されたすべての可能な表領域に対して定義できます。

次のコード例は、テーブルのヘッダー行の条件付き書式設定を定義する方法を示しています。

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

最初の列、最後の列、帯状の行など、スタイルを適用する表の部分を選択することもできます。これらは [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) 列挙にリストされ、[StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) プロパティを通じて適用されます。 **TableStyleOptions** 列挙では、これらの機能をビットごとに組み合わせることができます。

次のコード例は、テーブル スタイルが適用された新しいテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

以下の図は、Microsoft Word での **Table Styles** の表現と、Aspose.Words での対応するプロパティを示しています。

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## テーブル スタイルから書式設定を取得し、直接書式設定として適用します

Aspose.Words は、テーブル スタイルで見つかった書式設定を取得し、それを直接書式設定としてテーブルの行とセルに展開する [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) メソッドも提供します。書式設定とテーブル スタイルおよびセル スタイルを組み合わせてみてください。

{{% alert color="primary" %}}

このメソッドは、行またはセルの書式設定を通じてテーブルにすでに適用されている他の書式設定をオーバーライドしません。

{{% /alert %}}

次のコード例は、スタイルの書式設定を直接書式設定としてテーブルの行とセルに拡張する方法を示しています。

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}
