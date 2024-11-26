---
title: JavaのMail Merge操作のタイプ
second_title: Aspose.WordsのためのJava
articleTitle: Mail Merge操作のタイプ
linktitle: Mail Merge操作のタイプ
type: docs
description: "2つの異なるタイプのMail Merge操作を実行します:単純なMail MergeとMail Merge領域を使用します。 SimpleMail Mergeは各データソースレコードごとにドキュメント全体を繰り返しますが、Mail Mergewith regionsはJavaを使用してレコードごとに指定された領域のみを繰り返します。"
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /ja/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

Mail Mergeの主なアイデアは、テンプレートとデータソースから取得したデータに基づいて、ドキュメントまたは複数のドキュメントを自動的に作成するこ Aspose.Wordsを使用すると、2つの異なるタイプのMail Merge操作を実行できます:単純なMail MergeとMail Mergeリージョンを使用します。

SimpleMail Mergeを使用する最も一般的な例は、文書の先頭に名前を含めて別のクライアントに文書を送信したい場合です。 これを行うには、テンプレートに*First Name*や*Last Name*などの差し込み項目を作成し、データソースからのデータを入力する必要があります。 一方、地域でMail Mergeを使用する最も一般的な例は、各注文内のすべてのアイテムのリストを含む特定の注文を含む文書を送信する場合です。 これを行うには、アイテムに必要なすべてのデータを入力するために、各注文のテンプレート独自の領域内にマージ領域を作成する必要があります。

両方のマージ操作の主な違いは、単純なMail Merge(領域なし)は各データソースレコードごとにドキュメント全体を繰り返しますが、領域付きMail Mergeはレコードごとに指定された領域のみを繰り返すことです。 単純なMail Merge操作は、唯一の領域が文書全体である領域とのマージの特定のケースと考えることができます。

{{% alert color="primary" %}}

[MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/)クラスはMail Merge機能を表します。 そのプロパティを使用すると、Mail Merge操作を実行する前に必要な動作をカスタマイズできます。

{{% /alert %}}

## 単純なMail Merge操作 {#simple-mail-merge-operation}

単純なMail Mergeは、テンプレート内のMail Mergeフィールドにデータソースから必要なデータ(単一のテーブル表現)を入力するために使用されます。 したがって、Microsoft Wordの古典的なMail Mergeに似ています。

テンプレートに1つ以上の差し込み項目を追加して、単純なMail Merge操作を実行することができます。 テンプレートにマージ領域が含まれていない場合は、これを使用することをお勧めします。

このタイプを使用する主な制限は、データソース内の各レコードに対してドキュメントコンテンツ全体が繰り返されることです。

### 簡単なMail Merge操作 {#how-to-execute-a-simple-mail-merge-operation}を実行する方法

テンプレートの準備ができたら、簡単なMail Merge操作の実行を開始できます。 Aspose.Wordsを使用すると、さまざまなデータオブジェクトをデータソースとして受け入れる異なる[メソッドの実行](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource)を使用して、単純なMail Merge操作を実行できます。

次のコード例は、[Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object)メソッドのいずれかを使用して単純なMail Merge操作を実行する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

Simplemail mergeを実行する前に、ドキュメントの違いに気付くことができます:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

そして、単純なmail mergeを実行した後:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### 複数のマージされた文書を作成する方法

Aspose.Wordsでは、標準のMail Merge操作は、データソースからのコンテンツで単一のドキュメントのみを入力します。 したがって、複数のマージされたドキュメントを出力として作成するには、Mail Merge操作を複数回実行する必要があります。

次のコード例は、Mail Merge操作中に複数のマージされたドキュメントを生成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge地域を指定します

テンプレートにさまざまなリージョンを作成して、データを入力するだけの特別な領域を作成できます。 テンプレート内でこれらの領域を指定してドキュメントを動的に拡張するために、繰り返しデータを含むテーブル、行を挿入する場合は、Mail Mergewith regionsを使用し

入れ子になった(子)リージョンを作成したり、マージリージョンを作成したりすることができます。 このタイプを使用する主な利点は、ドキュメント内のパーツを動的に増やすことです。 詳細については、次の記事"NestedMail Mergewith Regions"を参照してください。

{{% alert color="primary" %}}

Mail Merge領域に関する情報は、[MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/)クラスを使用して取得できます。

{{% /alert %}}

### 地域でMail Mergeを実行する方法

Mail Merge領域は、開始点と終了点を持つドキュメント内の特定の部分です。 両方の点は、特定の名前*"TableStart:XXX"*と*"TableEnd:XXX"*を持つMail Mergeフィールドとして表されます。 Mail Mergeリージョンに含まれているすべてのコンテンツは、データソース内のすべてのレコードに対して自動的に繰り返されます。

Aspose.Wordsを使用すると、さまざまなデータオブジェクトをデータソースとして受け入れる異なる[メソッドの実行](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/)を使用する領域でMail Mergeを実行できます。

最初のステップとして、`DataSet`を作成して、後で入力パラメータとして`ExecuteWithRegions`メソッドに渡す必要があります:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

次のコード例は、[ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet)メソッドを使用してリージョンでMail Mergeを実行する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

リージョンでMail Mergeを実行する前に、ドキュメントの違いに気付くことができます:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

領域でMail Mergeを実行した後:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### 地域を持つMail Mergeの制限事項

領域でMail Mergeを実行するときに考慮する必要がある重要な点がいくつかあります:

* 開始点*TableStart:Orders*と終了点*TableEnd:Orders*は両方とも同じ行またはセルにある必要があります。 たとえば、テーブルのセルでマージ領域を開始する場合は、最初のセルと同じ行でマージ領域を終了する必要があります。
* 差し込み項目名は、DataTableの列の名前と一致する必要があります。 マップされたフィールドを指定しない限り、列の名前とは異なる名前を持つ差し込み項目では、リージョン付きのMail Mergeは成功しません。

これらのルールのいずれかが壊れている場合は、予期しない結果が得られるか、例外がスローされる可能性があります。

{{% alert color="primary" %}}

Mail Mergeリージョンを使用しない場合は、Microsoft Wordmail mergeと同様になり、データソース内の各レコードに対してドキュメントの内容全体が繰り返されます。

{{% /alert %}}

