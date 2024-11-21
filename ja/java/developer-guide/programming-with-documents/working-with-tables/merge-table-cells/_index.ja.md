---
title: 中のテーブルセルをマージ Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: マージテーブルセル
linktitle: マージテーブルセル
description: "テーブルセルを結合する方法 Javaお問い合わせ テーブル内のセルがマージされているかどうかチェック Javaお問い合わせ"
type: docs
weight: 40
url: /ja/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

テーブル内の特定の行は、テーブルのフル幅を占めるテキストの見出しまたは大きなブロックを必要とします。 テーブルの適切な設計のために、ユーザーは複数のテーブルセルを1つに結合できます。 Aspose.Words HTML コンテンツをインポートするなど、すべての入力フォーマットを扱うときにマージされたセルをサポートしています。

## テーブルセルをマージする方法

インスタグラム Aspose.Words, 合併細胞は、以下の特性で表されます。 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) クラス:

- - - [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) セルがセルの水平マージの部分であるかどうかを記述する
- - - [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) 細胞が細胞の垂直マージの部分であるかどうかを記述する

これらのプロパティの値は、細胞のマージ動作を決定する:

- - - 結合された細胞の順序の最初の細胞は持っています [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- - - その後、結合された細胞が持つ [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- 合併していないセルは、 [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

時々、テーブルに既存のドキュメントセルをロードすると、それらはマージされます。 しかし、実際には1つの長いセルになることもあります。 Microsoft Word このようにマージされたセルをエクスポートします。 個々のセルで作業しようとすると、これは混乱するかもしれませんが、このときには特定のパターンではないようです。

{{% /alert %}}

## セルがマージされているかどうかを確認する

細胞が結合細胞のシーケンスの一部であるかどうかを確認するには、単にチェックします **HorizontalMerge** そして、 **VerticalMerge** プロパティ。

次のコードの例では、水平および垂直セルのマージ型を印刷する方法を示します。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## DocumentBuilder を使用するときにテーブルセルをマージする

セルをテーブルに結合する [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), 合併が期待される各セルに適切なマージタイプを設定する必要があります。 **CellMerge.First** そしてそれから **CellMerge.Previous**お問い合わせ

また、マージが不要のセルのマージ設定をクリアしておく必要があります。これは最初の非マージセルを設定することで行うことができます。 **CellMerge.None**お問い合わせ この行っていない場合、テーブル内のすべてのセルがマージされます。

次のコードの例では、最初の行のセルが水平にマージされる2列でテーブルを作成する方法を示します。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

次のコードの例では、最初の列のセルが垂直にマージされる2列の表を作成する方法を示します。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## 他のケースでテーブルセルをマージ

他の状況では、 **DocumentBuilder** 既存のテーブルなど、従来の方法でセルをマージするなど、使用できません。 代わりに、マージプロパティをセルに適用する上で関与する基本的な操作を、タスクをはるかに簡単にします。 この方法は、Merge の自動化方法と似ています。これは、テーブル内のセルの範囲をマージするために呼び出されます。

以下のコードは、指定した範囲でテーブルセルをマージし、指定されたセルで始まり、エンドセルで終了します。 この場合、範囲は複数の行または列にスパンすることができます。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

次のコードの例では、指定した2つのセル間の範囲をマージする方法を示します。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## 縦型および横型はHTMLのテーブルの細胞を造りました

前回の記事で述べたように、テーブル Microsoft Word 独立した行のセットです。 各行は、他の行のセルに依存しないセルのセットを持っています。 したがって、 Microsoft Word 表には「列」や「1列」などのオブジェクトは「テーブルの各行の1番目のセルのセット」のようなものはありません。 たとえば、1行目は2つのセルから2cmと1cmの2列で構成されており、2列目は2つの異なるセルから1cm、幅2cmで構成されます。 そして Aspose.Words テーブルの概念を支えて下さい。

HTMLの表には、本質的に異なる構造があります。各行は同じ数のセルを持ち、各セルに対応する列の幅が1列の全てのセルと同じです。 お問い合わせ **HorizontalMerge** そして、 **VerticalMerge** 間違った値を返します。次のコード例を使用します。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## 水平方向への変換 マージセル

場合によっては、新しいバージョンの新しいバージョンがあるので、どのセルがマージされているかを検知できません。 Microsoft Word セルが水平にマージされるとき、マージフラグを使用しないでください。 しかし、マージフラグを使用して、セルが水平にセルに結合される状況では、 Aspose.Words 提供して下さい `ConvertToHorizontallyMergedCells` 細胞を変換する方法。 この方法は、テーブルを変換し、必要に応じて新しいセルを追加します。

以下のコード例では、上記の操作方法を示します。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
