---
title: Python でのテーブル スタイルの変更
second_title: Python via .NET用Aspose.Words
articleTitle: テーブルスタイルを適用
linktitle: テーブルスタイルを適用
description: "高度なテーブルフォーマットC#。 Pythonを使用してテーブルスタイルを作成します。テーブルスタイルPythonを適用します。"
type: docs
weight: 80
url: /ja/python-net/working-with-tablestyle/
---

表スタイルは、表に簡単に適用できる一連の書式設定を定義します。枠線、網掛け、配置、フォントなどの書式設定を表スタイルで設定し、多くの表に適用して一貫した外観を実現できます。

Aspose.Words は、テーブル スタイルのテーブルへの適用と、任意のテーブル スタイルのプロパティの読み取りをサポートします。表のスタイルは、ロード中および保存中に次の方法で保持されます。

- DOCX および WordML 形式の表スタイルは、これらの形式にロードおよび保存するときに保持されます。
- DOC 形式でロードおよび保存する場合、テーブル スタイルは保持されます (ただし、他の形式では保持されません)。
- 他の形式にエクスポートする場合、レンダリングまたは印刷する場合、表スタイルは表内の直接書式設定に拡張されるため、すべての書式設定が保持されます。

## 表スタイルを作成する

ユーザーは新しいスタイルを作成し、スタイル コレクションに追加できます。 [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) メソッドは、新しいテーブル スタイルを作成するために使用されます。

次のコード例は、新しいユーザー定義のテーブル スタイルを作成する方法を示しています。

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## 既存の表スタイルをコピーする

必要に応じて、`AddCopy` メソッドを使用して、特定のドキュメントに既に存在する表スタイルをスタイル コレクションにコピーできます。

このコピーでは、リンクされたスタイルもコピーされることに注意してください。

次のコード例は、あるドキュメントから別のドキュメントにスタイルをインポートする方法を示しています。

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## 既存の表スタイルを適用する

Aspose.Words は、[Style](https://reference.aspose.com/words/python-net/aspose.words/style/) クラスから継承された [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) を提供します。 **TableStyle** を使用すると、ユーザーはシェーディング、パディング、インデント、[CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/)、[Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/) などのさまざまなスタイル オプションを簡単に適用できます。

さらに、Aspose.Words は、[Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/)、[StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/)、[StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/)、[StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) のどのテーブル スタイルを使用するかを指定するための [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) クラスと `Table` クラスのいくつかのプロパティを提供します。

Aspose.Words は、テーブル スタイルが割り当てられたテーブルの一部の領域に適用される特別な書式設定を表す [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) クラスと、**ConditionalStyle** オブジェクトのコレクションを表す [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) も提供します。このコレクションには、[ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) 列挙型の値ごとに 1 つの項目を表す項目の永続的なセットが含まれています。 **ConditionalStyleType** 列挙は、表スタイルで条件付き書式を定義できるすべての可能な表領域を定義します。

この場合、条件付き書式設定は、ConditionalStyleType 列挙型で定義されたすべての可能な表領域に対して定義できます。

次のコード例は、テーブルのヘッダー行の条件付き書式設定を定義する方法を示しています。

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

最初の列、最後の列、帯状の行など、スタイルを適用する表の部分を選択することもできます。これらは [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) 列挙にリストされ、[StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) プロパティを通じて適用されます。 **TableStyleOptions** 列挙では、これらの機能をビットごとに組み合わせることができます。

次のコード例は、テーブル スタイルが適用された新しいテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

以下の図は、Microsoft Word での **Table Styles** の表現と、Aspose.Words での対応するプロパティを示しています。

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## テーブルスタイルの操作

表スタイルは、表に簡単に適用できる一連の書式設定を定義します。枠線、網掛け、配置、フォントなどの書式設定を表スタイルで設定し、多くの表に適用して一貫した外観を実現できます。

Aspose.Words は、テーブル スタイルのテーブルへの適用と、任意のテーブル スタイルのプロパティの読み取りをサポートします。表のスタイルは、ロードおよび保存中に次の方法で保持されます。

- DOCX および WordML 形式の表スタイルは、これらの形式にロードおよび保存するときに保持されます。
- 表のスタイルは、DOC 形式でロードおよび保存するときに保持されます (ただし、他の形式では保持されません)。
- 他の形式にエクスポートする場合、レンダリングまたは印刷する場合、テーブル スタイルはテーブル上の直接書式設定に拡張されるため、すべての書式設定が保持されます。

現在、新しいテーブル スタイルを作成することはできません。表に適用できるのは、組み込みの表スタイルまたはドキュメント内にすでに存在するカスタム表スタイルのみです。

## テーブル スタイルから書式設定を取得し、直接書式設定として適用します

Aspose.Words は、テーブル スタイルで見つかった書式設定を取得し、それを直接書式設定としてテーブルの行とセルに展開する [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) メソッドも提供します。書式設定とテーブル スタイルおよびセル スタイルを組み合わせてみてください。

{{% alert color="primary" %}}

このメソッドは、行またはセルの書式設定を通じてテーブルにすでに適用されている他の書式設定をオーバーライドしません。

{{% /alert %}}

次のコード例は、スタイルの書式設定を直接書式設定としてテーブルの行とセルに拡張する方法を示しています。

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}