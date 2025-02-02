﻿---
title: Javaの高度なMail Merge機能
second_title: Aspose.WordsのためのJava
articleTitle: 高度なMail Merge機能
linktitle: 高度なMail Merge機能
type: docs
description: "Aspose.WordsforJavaには、さらにMail Mergeのカスタマイズを実行できる高度なMail Merge機能がいくつか用意されています。 たとえば、テンプレート構造に関する情報の取得、ルールの設定、Mail Merge操作後のクリーンアップなどです。"
keywords: "use advanced Mail Merge features java, Mail Merge java"
weight: 50
url: /ja/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsは、単純なMail MergeまたはMail MergeリージョンでMail Mergeプロセスのさらなるカスタマイズを実行できるようにする追加のMail Mergeプロパティとメソッドを提供します。

高度なMail Merge機能には、Mail Merge操作を実行する前のテンプレート構造に関する情報の取得、Mail Merge操作のルールの設定、およびMail Merge操作中のクリーンアップが含まれますが、これ この記事では、高度な機能を使用する方法を示すために、いくつかのプロパティと例のみをカバーします。

## Mail Merge操作のルールの設定

テンプレートにルールを追加すると、ワークフロープロセスをより効果的かつ柔軟にすることができます。 Mail Mergeルールを使用すると、すばやく変更できるコンテンツを設定し、複数のドキュメントを生成する必要がなくなります。

Aspose.Wordsを使用すると、Mail Merge操作を実行してマージ情報を制御するときに実行されるルールに基づいてMail Mergeをカスタマイズできます。 たとえば、すべての顧客に送信する電子メールまたは手紙を作成する場合です。 データソースの特定のフィールドのさまざまな値に基づいて、文字にさまざまなデータを含めることができるようにルールを設定できます。

実装できるいくつかのMail Mergeルールを見てください。

### 現在の文書内のデータレコードをマージする次のフィールドを実装する

[Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/)フィールドを実装すると、新しいマージされたドキュメントを開始する代わりに、次のデータレコードを現在の結果のマージされたドキュメントにマー これは、1つの文書に複数のレコードを表示するために使用されます。

### NextIfフィールドとSkipIfフィールドを実装して、二つの式を比較します

2つの式（[right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression)式と[left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression)式）をいくつかの[operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator)で比較する場合は、[NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/)フィールドまたは[SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/)フィールドのいずれかを使用できます。

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Wordsは次のデータレコードを現在のマージ文書にマージし、テンプレート内の*NextIf*フィールドの後にあるすべての差し込み項目は、現在のデータレコードではなく次のデータレコードの値に置き換えられます。 | Aspose.Wordsは次のデータレコードを新しいマージ文書にマージします。 |
| `SkipIf` | Aspose.Wordsは現在のマージ文書をキャンセルし、データソース内の次のデータレコードに移動し、新しいマージ文書を開始します。 | Aspose.Wordsは現在のマージ文書を続行します。 |

次のコード例は、2つの式を**NextIf**または**SkipIf**と比較する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## テンプレート構造に関する情報の取得

Aspose.Wordsを使用すると、多くの方法でテンプレート内のさまざまな情報を収集できます。 たとえば、テンプレート内の一部の差し込み項目の名前やリージョンの階層を取得する必要がある場合があります。 ここでは、テンプレートから特定の情報を取得するための可能なバリアントについて説明します。

### 差し込み項目名の取得

他のユーザーによって作成された差し込み項目とデータをマージするシナリオに遭遇する可能性がありますが、この場合、差し込み項目の正確な名前がわ したがって、Mail Mergeの目的を達成するには、まず、すべての差し込み項目の名前を読み取って表示する必要があります。 Aspose.Wordsを使用すると、[GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/)メソッドを使用して差し込み項目名のコレクションを取得できます。

次のコード例は、テンプレート内のすべての差し込み項目の名前を取得する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### マージ領域に関する情報の取得

指定されたマージ領域を通じてテンプレートがどのように構造化されているかを理解するシナリオがある場合があります。 いくつかのメソッドを使用して、マージ領域に関する必要な情報をすべて収集したり、テンプレート内のマージ領域階層を取得したりすることができます。[GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy)メソッドなどがあります。 [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/)クラスのプロパティとメソッドを使用できます。次のコード例は、マージ領域階層を取得する方法を示しています:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

次のコード例は、名前に基づいてテンプレート内の特定のマージ領域を取得する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### マップされたフィールドの追加

Aspose.Wordsを使用すると、[MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields)プロパティを使用して、データソース内のフィールドの名前とテンプレート内のMail Mergeフィールドの名前を自動的にマップできます。 たとえば、テンプレートに"姓"というフィールド名があり、データソースに"姓"というフィールド名または"Last_Name"や"LastName"などの別のバリエーションがある場合、データソースのフィー マージテンプレートを多数のデータソースとマージする場合、マップされたフィールドは、データベース内のフィールド名と一致するようにフィールドをテンプレートに再

テンプレート内の差し込み項目とデータソース内のデータ項目の名前が異なる場合に、[Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String)メソッドを使用してマップされた項目を追加する方法を次のコード:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}
