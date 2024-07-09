---
title: フィールドにカスタムフォーマットを適用
second_title: Aspose.Words お問い合わせ Java
articleTitle: フィールドにカスタムフォーマットを適用
linktitle: フィールドにカスタムフォーマットを適用
description: "フィールド結果のフォーマットと評価 Javaお問い合わせ"
type: docs
weight: 40
url: /ja/java/applying-custom-formatting-to-fields/
---

時々、ユーザーはフィールドにカスタム書式を適用する必要があります。 この記事では、この方法のいくつかの例を見てみましょう。

より多くのオプションを学ぶには、対応するクラスの各フィールドタイプのプロパティの完全なリストを参照してください。

## フィールド結果にカスタムフォーマットを適用する方法

Aspose.Words オファー API フィールドの結果のカスタムフォーマットのために。 実装できます [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) フィールド結果がフォーマットされるかを制御するインターフェイス。 数値形式スイッチ、すなわち\#「#.##」、日付/時刻形式スイッチ、すなわち\@「dd.MM.yyyy」、および番号形式スイッチ、すなわち\* Ordinalを適用できます。

次のコードの例では、フィールド結果のカスタム書式を適用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## 評価方法 `IF` 条件:

評価したい方 `IF` 条件 の後で mail merge, あなたが使用することができます [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) 式評価の結果を即座に返す方法。

次のコードの例では、このメソッドを使用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## タイムフィールドにカスタムフォーマットを適用する方法

デフォルトで Aspose.Words ニュース `TIME` 現在の文化の短い時間フォーマットが付いている分野。 フォーマットしたい場合 `TIME` あなたの条件に従う分野は、それを実装することによって達成できます [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) インターフェイス。

以下のコード例では、カスタム書式を適用する方法を示します。 `TIME` フィールド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
