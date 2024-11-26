---
title: 對 C# 中的欄位應用自訂格式化
second_title: Aspose.Words for .NET
articleTitle: 對欄位应用自訂格式
linktitle: 對欄位应用自訂格式
description: "透過 C# 格式化和評估字段結果。"
type: docs
weight: 40
url: /zh-hant/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

有時使用者必須對欄位套用自訂格式。 在這個文章中，我們將會看一些例子來了解這如何可以完成。

更多選項，請參閱 [Fields namespace](https://reference.aspose.com/words/net/aspose.words.fields/) 內相應類別中每個欄位種類的完整屬性清單。

## 如何對欄位結果應用自訂格式

Aspose.Words 提供 API 來格式化欄位結果。 您可以實作 [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) 介面來控制結果欄位是如何格式化。 您可以使用數字格式開關, 即 QQ "#. □" , 日期/ 時間格式開關, 即 QQ "dd. MM. yyyy" , 和數字格式開關, 即 QQ Ordinal 。

以下程式碼範例說明如何為欄位結果應用自訂格式：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## 如何評估 `IF` 條件

如果你想評估 `IF` 條件後 Mail Merge 的結果，你可以利用 [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) 方法立即取得該表達式評估的結果。

以下範例說明了如何使用此方法：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## 如何將自訂格式套用到時間欄位上

預設 Aspose.Words 會更新 `TIME` 欄位，使用當前文化短時間格式。 我們發現 Microsoft Word 格式與 .NET/Windows 格式之間有差異，而不同版本的 .NET Framework 也有差異。 如果你想要按照你的要求來格式化 `TIME` 欄位，你可以透過實作 [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) 介面來達成。

下列程式碼範例示範如何將自訂格式套用至 `TIME` 欄位：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
