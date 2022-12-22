---
title: Apply Custom Formatting to Fields in C++
second_title: Aspose.Words for C++
articleTitle: Apply Custom Formatting to Fields
linktitle: Apply Custom Formatting to Fields
description: "Format and evaluate fields result using C++."
type: docs
weight: 40
url: /cpp/applying-custom-formatting-to-fields/
---

Sometimes users need to apply custom formatting to fields. In this article, we will look at a couple of examples of how this can be done.

To learn more options, see the full list of properties for each field type in the corresponding class in the [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## How to Apply Custom Formatting to Field Result

Aspose.Words provides API for custom formatting of field's result. You can implement [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) interface to control how the field result is formatted. You can apply numeric format switch, i.e. \# "#.##", date/time format switch, i.e. \@ "dd.MM.yyyy", and number format switch, i.e. \* Ordinal.

The following code example shows how to apply custom formatting for the field result:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## How to evaluate IF condition

If you want to evaluate IF condition after mail merge, you can use the [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) method that immediately returns the result of the expression evaluation.

The following code example shows how to use this method:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## How to Apply Custom Formatting to Time Field

By default Aspose.Words updates TIME field with current culture short time format. If you want to format the TIME field according to your requirement, you can achieve this by implementing [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider) interface.

The following code examples shows how to apply custom formatting to the TIME field:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}