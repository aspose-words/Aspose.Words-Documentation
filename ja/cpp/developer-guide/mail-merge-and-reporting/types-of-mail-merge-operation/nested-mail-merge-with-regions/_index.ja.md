---
title: ネストされたMail MergeとC++の領域
second_title: Aspose.WordsのためのC++
articleTitle: 領域を持つネストされたMail Merge
linktitle: 領域を持つネストされたMail Merge
type: docs
description: "C++を使用してネストされた領域でmail merge操作を実行します。 ネストされたマージは、データソースの階層データをマージテンプレートにマージできる機能です。"
keywords: "mail merge with nested regions c++"
weight: 30
url: /ja/cpp/nested-mail-merge-with-regions/
---

一部のシナリオでは、入れ子になったmail mergeをリージョンで使用する必要がある場合があります。 ネストされたマージは、データソースの階層データをマージテンプレートにマージして、ドキュメントに簡単に入力できる機能です。 基本的に、階層データは一連のデータ項目として表され、階層関係はデータ項目が互いにどのように関連しているかを記述します（データの1つの項目は別の

Aspose.Wordsを使用すると、入れ子になった領域でmail merge操作を実行できます。 この機能は、ツリーのような構造に編成されたデータソースがあり、mail merge操作を実行してテンプレートに階層データを移入する場合に使用できます。

{{% alert color="primary" %}}

ネストされたmail mergeは、リージョンでmail mergeを実行する場合にのみ関連します。

{{% /alert %}}

## ネストされたMail Mergeとは何ですか

Mail merge領域は、2つ以上のmail merge領域があり、そのうちの1つが階層的な形式で他の領域の中にある場合、ネストと呼ばれます。 各領域には1つのテーブルからのデータが含まれていることに注意してください。

ネストされたmail mergeの最も一般的な例は、多くのデータテーブルをリンクしてテンプレートに情報を提示する必要があるいくつかのアイテムを含む注文です。

下の図は、*Order*mail merge領域が*Item*mail merge領域の親である2つのネストされた領域を示しています。

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## ネストされた領域でMail Mergeを処理する方法

テンプレートにマージされるデータは、主にリレーショナルデータベースやXMLドキュメントなど、さまざまなソースから取得できます。 この例では、次を使用します。 [SQLite](https://www.sqlite.org/index.html) 私たちのデータを格納し、カスタムデータソースの実装でそれをロードするデータベース。

下の画像は、ネストされたマージ領域に渡された*Order*テーブルからのデータが*Item*テーブルにリンクされる方法と、マージ操作中に生成された出力を示しています。

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

出力ドキュメントからわかるように、**Order**テーブルからの各注文は、**Item**テーブルからのすべての注文の関連項目とマージテンプレートに挿入されます。 次の注文は、すべての注文とアイテムが一覧表示されるまで、そのアイテムと一緒に挿入されます。 テンプレート内のリージョンを使用してmail mergeを入れ子にする順序は、データソース内のテーブル間のデータリレーションシップと一致する必要があります。

## カスタムデータソースからデータリレーションを作成する方法

カスタムデータソースの親子構造でリレーションシップを作成するには、[IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/)インターフェイスを実装します。 現在の親レコードの関連する子データを返すには、[GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/)メソッドを使用します。

次のコード例は、入れ子になったmail mergeを使用して請求書を生成する方法を示しています [SQLite](https://www.sqlite.org/index.html) データベースと [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}