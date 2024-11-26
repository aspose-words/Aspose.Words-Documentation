---
title: 将自定义格式应用于C++中的字段
second_title: Aspose.Words对于C++
articleTitle: 将自定义格式应用于字段
linktitle: 将自定义格式应用于字段
description: "使用C++格式化和评估字段结果。"
type: docs
weight: 40
url: /zh/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

有时用户需要将自定义格式应用于字段。 在这篇文章中，我们将看看如何做到这一点的几个例子。

要了解更多选项，请参阅[Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields)中相应类中每个字段类型的属性的完整列表。

## 如何将自定义格式应用于字段结果

Aspose.Words 提供 API 用于自定义字段结果的格式。您可以实现 [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) 接口来控制字段结果的格式。您可以应用数字格式开关，即 \#"#.##"，日期/时间格式开关，即 \@"dd.MM.yyyy"，以及数字格式开关，即 \* 序数。

下面的代码示例演示如何为字段结果应用自定义格式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## 如何评估`IF`条件

如果要在mail merge之后计算`IF`条件，则可以使用立即返回表达式计算结果的[EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/)方法。

下面的代码示例演示如何使用此方法:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## 如何将自定义格式应用于时间字段

默认情况下，Aspose.Words使用当前区域性短时间格式更新`TIME`字段。 如果您想根据您的要求格式化`TIME`字段，您可以通过实现[IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider)接口来实现这一点。

以下代码示例演示如何将自定义格式应用于`TIME`字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
