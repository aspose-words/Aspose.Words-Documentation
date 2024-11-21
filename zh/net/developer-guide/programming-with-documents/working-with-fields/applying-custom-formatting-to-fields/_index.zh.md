---
title: 将自定义格式应用于 C# 中的字段
second_title: .NET 格式的 Aspose.Words
articleTitle: 将自定义格式应用于字段
linktitle: 将自定义格式应用于字段
description: "使用 C# 格式化和评估字段结果。"
type: docs
weight: 40
url: /zh/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

有时，用户需要对字段应用自定义格式。在本文中，我们将通过几个示例来说明如何做到这一点。

要了解更多选项，请参阅 [字段命名空间](https://reference.aspose.com/words/zh/net/aspose.words.fields/) 中相应类中每种字段类型的属性的完整列表。

## 如何将自定义格式应用于字段结果

Aspose.Words 提供 API 来自定义字段结果的格式。您可以实现 [IFieldResultFormatter](https://reference.aspose.com/words/zh/net/aspose.words.fields/ifieldresultformatter/) 接口来控制字段结果的格式。您可以应用数字格式开关，即\#"#.##"，日期/时间格式开关，即\@"dd.MM.yyyy"，以及数字格式开关，即\* Ordinal。

以下代码示例显示如何对字段结果应用自定义格式：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## 如何评估 `IF` 状况

如果要在 mail merge 后计算 `IF` 条件，可以使用立即返回表达式计算结果的 [EvaluateCondition](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldif/evaluatecondition/) 方法。

以下代码示例展示了如何使用此方法：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## 如何将自定义格式应用于时间字段

默认情况下，Aspose.Words 使用当前文化短时间格式更新 `TIME` 字段。我们发现 Microsoft Word 格式和 .NET/Windows 格式之间以及不同 .NET Framework 版本之间也存在差异。如果您想根据您的要求格式化 `TIME` 字段，您可以通过实现 [IFieldUpdateCultureProvider](https://reference.aspose.com/words/zh/net/aspose.words.fields/ifieldupdatecultureprovider/) 接口来实现。

以下代码示例显示如何将自定义格式应用于 `TIME` 字段：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
