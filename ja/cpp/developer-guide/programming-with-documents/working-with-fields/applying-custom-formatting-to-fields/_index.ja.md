---
title: C++のフィールドにカスタム書式を適用する
second_title: C++の場合Aspose.Words
articleTitle: カスタム書式設定をフィールドに適用する
linktitle: カスタム書式設定をフィールドに適用する
description: "C++を使用してフィールドの結果を書式設定し、評価します。"
type: docs
weight: 40
url: /ja/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

ユーザーがフィールドにカスタム書式を適用する必要がある場合があります。 この記事では、これをどのように行うことができるかの例をいくつか見ていきます。

詳細なオプションについては、[Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields)の対応するクラスの各フィールドタイプのプロパティの完全なリストを参照してください。

## フィールドの結果にカスタム書式を適用する方法

Aspose.Words は、フィールドの結果のカスタム フォーマット用の API を提供します。フィールドの結果のフォーマット方法を制御するには、[IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) インターフェイスを実装できます。数値フォーマット スイッチ (つまり \# "#.##")、日付/時刻フォーマット スイッチ (つまり \@ "dd.MM.yyyy")、および数値フォーマット スイッチ (つまり \* Ordinal) を適用できます。

次のコード例は、フィールドの結果にカスタム書式を適用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## `IF`条件を評価する方法

Mail mergeの後に`IF`の条件を評価する場合は、式の評価の結果をすぐに返す[EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/)メソッドを使用できます。mail mergeの後に`IF`の条件を評価する場合は、mail mergeの後に`IF`の条件

次のコード例は、このメソッドを使用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## 時間フィールドにカスタム書式を適用する方法

デフォルトではAspose.Wordsは`TIME`フィールドを現在のカルチャの短い時間形式で更新します。 要件に応じて`TIME`フィールドを書式設定する場合は、[IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider)インターフェイスを実装することでこれを実現できます。

次のコード例は、`TIME`フィールドにカスタム書式を適用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
