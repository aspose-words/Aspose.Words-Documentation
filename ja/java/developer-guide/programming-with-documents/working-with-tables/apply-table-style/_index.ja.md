---
title: Javaでのテーブルスタイルの操作
second_title: Aspose.WordsのためのJava
articleTitle: テーブルスタイルの適用
linktitle: テーブルスタイルの適用
description: "高度なテーブルの書式設定Java。 Javaを使用してテーブルスタイルを作成します。 高度な表の書式設定、Javaを使用した表のスタイルの紹介。"
type: docs
weight: 80
url: /ja/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

テーブルスタイルは、テーブルに簡単に適用できる一連の書式設定を定義します。 罫線、陰影、配置、フォントなどの書式設定は、テーブルスタイルで設定し、一貫した外観のために多くのテーブルに適用できます。

Aspose.Wordsは、テーブルスタイルをテーブルに適用し、任意のテーブルスタイルのプロパティを読み取ることもサポートします。 テーブルスタイルは、ロード中および保存中に次の方法で保持されます:

- DOCXおよびWordML形式のテーブルスタイルは、これらの形式への読み込みおよび保存時に保持されます
- テーブルスタイルは、DOC形式でロードおよび保存するときに保持されます(ただし、他の形式には保持されません)。
- 他の形式、レンダリング、印刷にエクスポートする場合、テーブルスタイルはテーブル内の直接書式設定に展開されるため、すべての書式設定が保持されま

## テーブルスタイルを作成する

ユーザーは新しいスタイルを作成し、それをスタイルコレクションに追加できます。 [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)メソッドは、新しいテーブルスタイルを作成するために使用されます。

次のコード例は、新しいユーザー定義テーブルスタイルを作成する方法を示しています:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## 既存のテーブルスタイルをコピーする

必要に応じて、`AddCopy`メソッドを使用して、特定のドキュメントに既に存在するテーブルスタイルをスタイルコレクションにコピーできます。

このコピーでは、リンクされたスタイルもコピーされることを知っておくことが重要です。

次のコード例は、ある文書から別の文書にスタイルをインポートする方法を示しています:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## 既存のテーブルスタイルを適用する

Aspose.Wordsは[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)クラスから継承された[TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/)を提供します。 **TableStyle**は、シェーディング、パディング、インデント、[CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing)と[Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont)などのような異なるスタイルオプションを適用するためにユーザーを容易にします。

さらに、Aspose.Wordsは[StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)クラスと`Table`クラスのいくつかのプロパティを提供し、どのテーブルスタイルを使用するかを指定します: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), と[StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)。

Aspose.Wordsは、割り当てられたテーブルスタイルを持つテーブルの一部の領域に適用される特別な書式設定を表す[ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/)クラスと、**ConditionalStyle**オブジェクトのコレクションを表す[ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/)も提供します。 このコレクションには、[ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/)列挙型の値ごとに1つの項目を表す項目の永続的なセットが含まれています。 **ConditionalStyleType**列挙体は、条件付き書式をテーブルスタイルで定義できるすべての可能なテーブル領域を定義します。

この場合、条件付き書式は、ConditionalStyleType列挙型で定義されているすべての可能なテーブル領域に対して定義できます。

次のコード例は、テーブルのヘッダー行の条件付き書式を定義する方法を示しています:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

また、最初の列、最後の列、縞模様の行など、スタイルを適用するテーブルパーツを選択することもできます。 これらは[TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/)列挙体にリストされ、[StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions)プロパティを介して適用されます。 **TableStyleOptions**列挙では、これらの機能をビット単位で組み合わせることができます。

次のコード例は、テーブルスタイルを適用して新しいテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

下の写真は、Microsoft Wordの**Table Styles**とAspose.Wordsの対応するプロパティの表現を示しています。

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## テーブルスタイルから書式設定を取得し、直接書式設定として適用します

Aspose.Wordsはまた、テーブルスタイルで見つかった書式設定を取得し、直接書式設定としてテーブルの行とセルに展開する[ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting)メソッドを提供します。 書式設定をテーブルスタイルとセルスタイルと組み合わせてみてください。

{{% alert color="primary" %}}

このメソッドは、行またはセル形式を使用してテーブルに既に適用されている他の書式設定を上書きしません。

{{% /alert %}}

次のコード例は、スタイルからテーブルの行とセルに直接書式設定として書式を展開する方法を示しています:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
