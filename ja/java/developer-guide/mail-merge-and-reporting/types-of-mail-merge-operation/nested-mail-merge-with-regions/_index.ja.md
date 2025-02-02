﻿---
title: ネストされたMail MergeとJavaの領域
second_title: Aspose.WordsのためのJava
articleTitle: 領域を持つネストされたMail Merge
linktitle: 領域を持つネストされたMail Merge
type: docs
description: "入れ子になった領域でMail Merge操作を実行します。 ネストされたマージは、Javaを使用してデータソースの階層データをマージテンプレートにマージできる機能です。"
keywords: "mail merge with nested regions Java, Nested Mail Merge Regions"
weight: 10
url: /ja/java/nested-mail-merge-with-regions/
timestamp: 2024-01-27-14-07-04
---

一部のシナリオでは、入れ子になったMail Mergeをリージョンで使用する必要がある場合があります。 ネストされたマージは、データソースの階層データをマージテンプレートにマージして、ドキュメントに簡単に入力できるようにする機能です。 基本的に、階層データは一連のデータ項目として表され、階層関係はデータ項目が互いにどのように関連しているかを記述します（データの1つの項目は別の

Aspose.Words入れ子になった領域を使用してMail Merge操作を実行できます。 この機能は、ツリーのような構造に編成されたデータソースがあり、Mail Merge操作を実行してテンプレートに階層データを移入する場合に使用できます。

{{% alert color="primary" %}}

ネストされたMail Mergeは、リージョンでMail Mergeを実行する場合にのみ関連します。

{{% /alert %}}

## ネストされたMail Mergeとは何ですか

Mail Merge領域は、2つ以上のMail Merge領域があり、そのうちの1つが階層的な形式で他の領域の中にある場合、ネストと呼ばれます。 各領域には1つのテーブルからのデータが含まれていることに注意してください。

ネストされたMail Mergeの最も一般的な例は、複数のデータテーブルをリンクしてテンプレートに情報を提示する必要がある複数のアイテムを含む注文です。

下の図は、*Order*Mail Merge領域が*Item*Mail Merge領域の親である2つのネストされた領域を示しています。

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions_aspose_words_java" style="width:650px"/>

## ネストされた領域でMail Mergeを処理する方法

テンプレートにマージされるデータは、主にリレーショナルデータベースやXMLドキュメントなど、さまざまなソースから取得できます。 この例では、XMLファイルを使用してデータを保存し、**DataSet**に直接ロードします。

Aspose.Wordsでは、**DataSet**で指定されたデータ関係を使用して、ネストされた領域でMail Mergeを処理できます。 **DataSet**オブジェクトがXMLをロードするとき、指定されたスキーマを使用するか、XML自体の構造から推測してこれを実現します。**DataSet**オブジェクトはXMLをロードす この構造から、必要に応じてテーブル間のリレーションシップを作成します。

下の画像は、ネストされたマージ領域に渡された*Order*テーブルからのデータが*Item*テーブルにリンクされる方法と、マージ操作中に生成された出力を示しています。

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions_aspose_words_java" style="width:650px"/>

出力文書からわかるように、**Order**テーブルからの各注文は、**Item**テーブルからのすべての注文の関連項目とマージテンプレートに挿入されます。 次の注文は、すべての注文とアイテムが一覧表示されるまで、そのアイテムと一緒に挿入されます。 テンプレート内のリージョンを使用してMail Mergeをネストする順序は、データソース内のテーブル間のデータリレーションシップと一致する必要があります。

次のコード例は、地域でネストされたMail Mergeを使用して請求書を生成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-NestedMailMerge.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

## ネストされたMail Mergeにリージョンを持つデータ関係を設定する方法

入れ子になったMail Mergeをリージョンで正しく実行するには、親子構造内のすべてのデータリレーションシップを設定する必要があります。 この重要なステップをスキップすると、領域でネストされたMail Mergeの実行に失敗する可能性があります。

**ReadXml**メソッドを使用してXMLファイルからネストされたMail Mergeのデータを取得すると、XML文書の構造に従ってリレーションシップが自動的に作成されます。 ただし、正しい関係が作成されていることを確認する必要があります。

Mail Mergeが期待どおりに動作しない場合は、XMLファイルを再構築するか、DataSet内のDataTableオブジェクト間の関係を明示的に作成する必要があります。

関連するデータテーブルを持つ`DataSet`は、テーブル間の親子関係を表すために**DataRelation**オブジェクトを使用します。

次のコード例は、`DataRelation`オブジェクトを使用してcustomerのテーブルとorderのテーブルの間に`DataRelation`を確立する方法を示しています:
{{< highlight java >}}
dataSet.getRelations().add(new DataRelation("OrderToItem", orderTable.getColumns().get("Order_Id"), itemTable.getColumns().get("Order_Id"), false));
{{< /highlight >}}
