---
title: Mail MergeとC++の領域
second_title: Aspose.WordsのためのC++
articleTitle: Mail Merge地域を指定します
linktitle: Mail Merge地域を指定します
type: docs
description: "テンプレートに異なる領域を作成して、データを入力するだけの特別な領域を作成します。 ドキュメントを動的に成長させるために、繰り返しデータを含むテーブル、行を挿入する場合は、領域でmail mergeを使用します。"
keywords: "how to execute Mail Merge c++"
weight: 20
url: /ja/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

テンプレートにさまざまなリージョンを作成して、データを入力するだけの特別な領域を作成できます。 テンプレート内でこれらの領域を指定してドキュメントを動的に拡張するために、繰り返しデータを含むテーブル、行を挿入する場合は、mail mergewith regionsを使用し

入れ子になった(子)リージョンを作成したり、マージリージョンを作成したりすることができます。 このタイプを使用する主な利点は、ドキュメント内のパーツを動的に増やすことです。 詳細については、次の記事"NestedMail Mergewith Regions"を参照してください。

{{% alert color="primary" %}}

Mail merge領域に関する情報は、[MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/)クラスを使用して取得できます。

{{% /alert %}}

## 地域でMail Mergeを実行する方法

Mail merge領域は、開始点と終了点を持つドキュメント内の特定の部分です。 両方の点は、特定の名前*"TableStart:XXX"*と*"TableEnd:XXX"*を持つmail mergeフィールドとして表されます。 mail mergeリージョンに含まれているすべてのコンテンツは、データソース内のすべてのレコードに対して自動的に繰り返されます。

Aspose.Wordsを使用すると、[IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/)カスタムデータソースを受け入れる[ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/)メソッドのいずれかを使用して、リージョンでmail mergeを実行できます。

次のコード例は、sqliteデータベースのリージョンでmail mergeを実行する方法を示しています [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

リージョンでmail mergeを実行する前に、ドキュメントの違いに気付くことができます:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

領域でmail mergeを実行した後:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## 地域を持つMail Mergeの制限事項

領域でmail mergeを実行するときに考慮する必要がある重要な点がいくつかあります:

* 開始点*TableStart:Orders*と終了点*TableEnd:Orders*は両方とも同じ行またはセルにある必要があります。 たとえば、テーブルのセルでマージ領域を開始する場合は、最初のセルと同じ行でマージ領域を終了する必要があります。
  差し込み項目名はDataTableの列名と一致する必要があります。 マップされたフィールドを指定しない限り、列名以外の名前を持つ差し込み項目では、領域を指定したmail mergeは成功しません。
* Aspose.WordsのためのC++ [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/)および[IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/)ベースのデータソースのみをサポートします。 .NETやJavaとは異なり、C++にはデータベースを操作するための一般的に受け入れられているクロスプラットフォームAPIはありません(ADODB、ODBC、JDBCなど)。 特定のデータソースを操作するには、[IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/)または[IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/)インターフェイスを実装する必要があります。

これらのルールのいずれかが壊れている場合は、予期しない結果が得られるか、例外がスローされる可能性があります。

{{% alert color="primary" %}}

Mail mergeリージョンを使用しない場合は、Microsoft Wordmail mergeと同様になり、データソース内の各レコードに対してドキュメントの内容全体が繰り返されます。

{{% /alert %}}

