---
title: テーブルスタイルで作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: テーブル様式を適用して下さい
linktitle: テーブル様式を適用して下さい
description: "高度なテーブルフォーマット Javaお問い合わせ テーブルスタイルを作成する Javaお問い合わせ 高度のテーブルのフォーマット、テーブル様式の使用入門 Javaお問い合わせ"
type: docs
weight: 80
url: /ja/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

テーブルスタイルはテーブルに簡単に適用できるフォーマットのセットを定義します。 ボーダー、シェーディング、アライメント、フォントなどのフォーマットは、テーブルスタイルで設定し、一貫性のある外観のために多くのテーブルに適用することができます。

Aspose.Words テーブルスタイルをテーブルに適用するだけでなく、テーブルスタイルのプロパティを読み込みます。 テーブルスタイルは、次の方法でローディングと保存中に保存されます。

- DOCXとWordML形式のテーブルスタイルは、これらのフォーマットへの読み込みと保存時に保存されます
- DOC形式の読み込みと保存時にテーブルスタイルが保存されます(ただし、他のフォーマットでは保存されません)
- - - 他のフォーマット、レンダリングまたは印刷にエクスポートするとき、テーブルのスタイルはテーブルの直接フォーマットに拡大されますので、すべてのフォーマットは保存されます

## テーブルスタイルを作成する

ユーザーは新しいスタイルを作成し、スタイルコレクションに追加することができます。 ザ・オブ・ザ・ [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) メソッドは新しいテーブルスタイルを作成するために使われます。

次のコードの例では、新しいユーザー定義テーブルスタイルを作成する方法を示します。

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## 既存のテーブルスタイルをコピーする

必要に応じて、すでにあるテーブルスタイルをスタイルコレクションにコピーすることができます。 `AddCopy` メソッド。

このコピーでリンクされたスタイルもコピーされていることを知っておくことが重要です。

次のコードの例では、一つの文書から別の文書にスタイルをインポートする方法を示します。

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## 既存のテーブルスタイルを適用

Aspose.Words オファー [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) から継承された [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) クラス。 **TableStyle** ユーザーがシェーディング、パディング、インデントなどの異なるスタイルのオプションを適用するのを容易にします。 [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) そして、 [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), など。

その他、 Aspose.Words 提供して下さい [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) クラスといくつかのプロパティ `Table` どのテーブルスタイルで動作するかを指定するクラス: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), そして、 [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)お問い合わせ

Aspose.Words また提供して下さい [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) 割り当てられたテーブルスタイルとテーブルのいくつかの領域に適用され、特殊なフォーマットを表すクラス [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) それはコレクションを表します **ConditionalStyle** オブジェクト。 このコレクションは、各値の1つの項目を表すアイテムの永久的なセットが含まれています [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) 列挙型 ザ・オブ・ザ・ **ConditionalStyleType** enumeration は、テーブルスタイルで条件付き書式を定義できるすべてのテーブル領域を定義します。

この場合、ConditionalStyleType 列挙型で定義されている全てのテーブルエリアで条件付き書式を定義できます。

次のコードの例では、テーブルのヘッダ行の条件式を定義する方法を示します。

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

また、最初の列、最後の列、バンドされた行など、スタイルを適用するテーブル部品も選択できます。 それらはリストされています [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) 列挙および適用されて [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) プロパティ. ザ・オブ・ザ・ **TableStyleOptions** enumerationは、これらの機能のビット単位の組み合わせを可能にします。

次のコード例では、テーブルスタイルで新しいテーブルを作成する方法を示します。

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

下の写真は、次の表現を示しています **Table Styles** お問い合わせ Microsoft Word およびその対応するプロパティ Aspose.Wordsお問い合わせ

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## テーブルスタイルからフォーマットを取り、直接フォーマットとして適用して下さい

Aspose.Words また提供します [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) テーブルスタイルで見つかったフォーマットを取り、テーブルの行とセルを直接フォーマットとして展開する方法。 テーブルスタイルとセルスタイルを組み合わせてみてください。

{{% alert color="primary" %}}

この方法は、行またはセルのフォーマットを介してテーブルに既に適用されている他のフォーマットを上書きしません。

{{% /alert %}}

次のコードの例では、スタイルからテーブル行やセルにフォーマットを直接フォーマットとして展開する方法を示します。

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
