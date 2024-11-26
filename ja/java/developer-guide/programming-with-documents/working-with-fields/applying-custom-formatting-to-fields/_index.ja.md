---
title: カスタム書式設定をフィールドに適用する
second_title: Aspose.WordsのためのJava
articleTitle: カスタム書式設定をフィールドに適用する
linktitle: カスタム書式設定をフィールドに適用する
description: "Javaを使用してフィールドの結果を書式設定し、評価します。"
type: docs
weight: 40
url: /ja/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

ユーザーがフィールドにカスタム書式を適用する必要がある場合があります。 この記事では、これをどのように行うことができるかの例をいくつか見ていきます。

詳細なオプションについては、対応するクラスの各フィールドタイプのプロパティの完全なリストを参照してください。

## フィールドの結果にカスタム書式を適用する方法

Aspose.Wordsは、フィールドの結果のカスタム書式設定のためのAPIを提供します。 [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/)インターフェイスを実装して、フィールドの結果の書式設定方法を制御できます。 数値書式スイッチ、すなわち\# "#.##"、日付/時刻書式スイッチ、すなわち\@ "dd.MM.yyyy"、および数値書式スイッチ、すなわち\* Ordinalを適用することができます。

次のコード例は、フィールドの結果にカスタム書式を適用する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## `IF`条件を評価する方法

Mail mergeの後に`IF`条件を評価する場合は、式の評価の結果をすぐに返す[EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition)メソッドを使用できます。

次のコード例は、このメソッドを使用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## 時間フィールドにカスタム書式を適用する方法

デフォルトでAspose.Wordsは、現在のカルチャ短い時間形式で`TIME`フィールドを更新します。 要件に応じて`TIME`フィールドを書式設定する場合は、[IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/)インターフェイスを実装することでこれを実現できます。

次のコード例は、`TIME`フィールドにカスタム書式を適用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
