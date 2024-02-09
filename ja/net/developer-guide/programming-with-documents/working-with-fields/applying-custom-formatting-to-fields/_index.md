---
title: C# のフィールドにカスタム書式設定を適用する
second_title: .NET用Aspose.Words
articleTitle: カスタム書式設定をフィールドに適用する
linktitle: カスタム書式設定をフィールドに適用する
description: "C# を使用してフィールドの結果をフォーマットし、評価します。"
type: docs
weight: 40
url: /ja/net/applying-custom-formatting-to-fields/
---

場合によっては、ユーザーがフィールドにカスタム書式を適用する必要があることがあります。この記事では、これを行う方法の例をいくつか見ていきます。

オプションの詳細については、[フィールドの名前空間](https://reference.aspose.com/words/net/aspose.words.fields/) の対応するクラスの各フィールド タイプのプロパティの完全なリストを参照してください。

## フィールド結果にカスタム書式設定を適用する方法

Aspose.Words は、フィールドの結果のカスタム書式設定用の API を提供します。 [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) インターフェースを実装して、フィールド結果のフォーマット方法を制御できます。数値形式スイッチ (\# "#.##")、日付/時刻形式スイッチ (\@ "dd.MM.yyyy")、および数値形式スイッチ (\* Ordinal) を適用できます。

次のコード例は、フィールド結果にカスタム書式設定を適用する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## `IF` 状態の評価方法

mail merge の後に `IF` 条件を評価する場合は、式の評価結果をすぐに返す [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) メソッドを使用できます。

次のコード例は、このメソッドの使用方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## カスタム書式設定を時間フィールドに適用する方法

デフォルトでは、Aspose.Words は `TIME` フィールドを現在のカルチャの短時間形式で更新します。 Microsoft Word 形式と .NET/Windows 形式の間には違いがあり、また異なる .NET Framework バージョン間にも違いがあることがわかりました。要件に従って `TIME` フィールドをフォーマットしたい場合は、[IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) インターフェイスを実装することでこれを実現できます。

次のコード例は、カスタム書式設定を `TIME` フィールドに適用する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
