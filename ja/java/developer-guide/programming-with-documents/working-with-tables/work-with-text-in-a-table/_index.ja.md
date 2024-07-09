---
title: 表でテキストを操作する
second_title: Aspose.Words お問い合わせ Java
articleTitle: 表でテキストを操作する
linktitle: 表でテキストを操作する
description: "テキストをテーブルに置換する Javaお問い合わせ 表やセルからプレーンテキストを抽出 Javaお問い合わせ"
type: docs
weight: 60
url: /ja/java/extract-text-from-and-replace-text-in-a-table/
---

以前の記事で述べたように、テーブルは通常、画像などの他のコンテンツがテーブルセルに置くことができますが、プレーンテキストが含まれています。

テキストまたはテーブルに他のコンテンツを追加するには、適切な方法を使用して行われます [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) クラスで記述され、 **"「テーブルを作る」** 記事。 この記事では、既存のテーブルでテキストを扱う方法について説明します。

## テキストをテーブルに置き換える

他のノードと同様にテーブル Aspose.Words, アクセス方法 [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) オブジェクト。 テーブル範囲オブジェクトを使用して、テキストをテーブルに置き換えることができます。

置換時に特殊な文字を使う機能がサポートされていますので、既存のテキストを複数のパラグラフテキストに置き換えることも可能です。 これを行うには、対応する特殊なメタキャラクタを使用する必要があります。 [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) メソッド。

{{% alert color="primary" %}}

典型的には、テキストの置換は、セルレベル(セル)または段落レベルで行われるべきです。

{{% /alert %}}

次のコードの例では、テーブル全体でテキストの文字列のすべてのインスタンスを置き換える方法を示します。

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## テーブルからプレーンテキストを抽出する

使い方 **Range** オブジェクトは、テーブル範囲全体でメソッドを呼び出し、テーブルをプレーンテキストとして抽出することもできます。 これを行うには、 [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) プロパティ

次のコードの例では、テーブルのテキスト範囲を印刷する方法を示します。

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

個々のテーブルセルだけからコンテンツを抽出するために同じ技術が使用されます。

次のコードの例では、行とテーブル要素のテキスト範囲を印刷する方法を示します。

{{% /alert %}}

次のコードの例では、行とテーブル要素のテキスト範囲を印刷する方法を示します。

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## 代替テーブルテキストを扱う

Microsoft Word テーブルは `table title` そして、 `table description` 表に含まれる情報の代替テキスト表現を提供する。

インスタグラム Aspose.Words, また、テーブルのタイトルと説明を追加することもできます。 [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) そして、 [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) プロパティ。 これらのプロパティは、DOCX文書が適合する意味があります ISO/IEC 29500。 以前のフォーマットで保存する場合 ISO/IEC 29500は、これらのプロパティは無視されます。

次のコードの例では、テーブルのタイトルと説明のプロパティを設定する方法を示します。

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}