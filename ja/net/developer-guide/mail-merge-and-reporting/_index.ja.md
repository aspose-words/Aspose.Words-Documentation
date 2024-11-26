---
title: Mail MergeとC#での報告
second_title: Aspose.Wordsのための.NET
articleTitle: Mail Mergeと報告
linktitle: Mail Mergeと報告
type: docs
description: "Mail Mergeは、C#を使用して文書をすばやく作成するための一般的な機能です。 Aspose.Wordsfor.NETは、標準のMail Merge機能を採用し、多くのステップを進め、レポート、カタログ、在庫、請求書などのさらに複雑なドキュメントを作成できる本格的なレポーティングソリューションに変えます。"
keywords: "how to use Mail Merge c#"
weight: 30
url: /ja/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Mergeは、手紙、ラベル、封筒などの文書をすばやく簡単に作成するための一般的な機能です。 Aspose.Wordsを使用すると、Mail Mergeフィールドを持つテンプレートからドキュメントを生成できます。

Mail Mergeフィールドは、出力ドキュメント内のデータソースレコードの特定の値を含めるためにmail mergeテンプレートに挿入できるフィールドです。 例えば、挿入することができます。融合分野のメールテンプレートの挨拶、受取人の名前ではなく一般"こんにちは!". Aspose.Wordsデータベースやファイルなどの外部ソースからのデータをこれらのフィールドに配置し、書式設定します。 結果の文書は指定されたフォルダに保存されます。

Aspose.Wordsは標準的なMail Merge機能を採用し、多くのステップを進め、レポート、カタログ、在庫、請求書などのさらに複雑なドキュメントを作成できる本格的なレポーティングソリューションに変換します。 Aspose.Wordsレポートソリューションのいくつかの利点は次のとおりです:

- 標準Mail Mergeフィールドを使用したMicrosoft Wordの設計レポート
- 詳細な注文行など、成長しているドキュメント内の領域を定義します
- Mail merge中に画像を挿入する
- カスタムロジックの実行、書式設定の制御、またはMail Mergeイベントハンドラーを使用した複雑なコンテンツの挿入
- 任意の種類のデータソースからのデータをドキュメントに入力します

{{% alert color="primary" %}}

[Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/)名前空間は、メールマージを処理するために使用されます。

{{% /alert %}}

## Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}のメカニズムと主な構成要素

Aspose.Wordsは様々な[supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/)でドキュメントを読み込む機能を提供し、ユーザーがMail Merge操作を実行できるようにします。

通常、読み込まれたドキュメントでは、差し込み項目、たとえばDOCX形式のドキュメントを格納できます。 ただし、このようなフィールドを格納しない形式、たとえばTXTがあります。 Aspose.Wordsがこのようなファイル形式の読み込みをサポートしている場合は、差し込み項目を文書モデルに直接追加し、便利な[supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/)で文書を保存し、Mail Merge操作を実

Mail Merge操作は*mail merge template*と*data source*をマージして個々の*merged documents*を生成します。

## Mail Mergeテンプレート {#what-is-a-mail-merge-template}とは何ですか

マージテンプレートを使用してmail merge操作を適用する目的は、ドキュメントを作成するプロセスを簡素化することです。

マージテンプレートを作成および設計するには、いくつかの方法があります。 Microsoft Wordを使用でき、マージテンプレートはMicrosoft Wordテンプレート、つまりDOTまたはDOTX形式の文書である必要はなく、DOCまたはDOCX形式の通常の文書にすることができます。 データソースからのデータを後で挿入する場所に、差し込み項目と呼ばれる特別なフィールドをこのテンプレートに挿入する必要があります。 または、[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)クラスを使用してプログラムでマージテンプレートを作成することもできます。

マージテンプレートにはメインテキストが含まれており、Mail Merge操作を実行した後はすべての出力ドキュメントで同じである必要があります。 差し込み項目を追加する機能がある場合は、テンプレートに任意の形式を使用できます。 テンプレート内のすべての差し込み項目は、Mail Merge操作中にデータソースから入力されます。

## Mail Merge操作 {#data-source-types-for-a-mail-merge-operation}のデータソース

Aspose.WordsMail Mergeはさまざまなデータソースを受け入れます。 これは、次のいずれかになります。DataTable, DataView, DataSet, IDataReader, ADO.NETでサポートされる値の配列、または[IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/)実装で表されるカスタムデータソース。

データソースには、個々の電子メールやドキュメントをパーソナライズするためにMail Merge操作中に取得されるすべての情報が含まれています。 データソースは、手動で作成することも、既存のデータベースまたはアプリケーションからレポートを作成することによって生成することもできます。 XML形式のデータがある場合は、ロードしてDataSetとマージすることができます。 Mail Merge操作はすべてのデータソースレコードを通過し、ドキュメント内のMail Mergeフィールドに挿入します。 [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/)などのいくつかのmail mergeインターフェイスを実装して、LINQクエリ、XMLファイル、ビジネスオブジェクトなど、任意のデータソースからのデータをマージできます。[IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/)は、LINQクエリ、XMLファイル、またはビジネスオブジェクトを含む任意のデータソースからのデータをマージすることができます。

次のコード例は、Mail Merge操作のデータソースとしてデータテーブルをロードする方法を示しています:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Mail Merge操作 {#merged-documents-of-a-mail-merge-operation}のマージされたドキュメント

マージされたドキュメントは、テンプレートとデータソースをマージするときのMail Merge操作の結果です。 マージされたドキュメント内のすべての差し込み項目は、データソースからの実際のデータに置き換えられます。

次の画像は、Mail Merge操作を実行する前にマージされたフィールドを持つマージテンプレートの例を示しています。

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

次の画像は、Mail Merge操作を実行した結果として出力マージされたドキュメントの例を示しています。

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## また見て下さい

- [Mail MergeテンプレートをWordで操作する](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
