---
title: Applying Custom Formatting to Fields
type: docs
weight: 40
url: /net/applying-custom-formatting-to-fields/
---

## How to Apply Custom Formatting to Field Result

Aspose.Words provides API for custom formatting of field's result. You can implement IFieldResultFormatter interface to control how the field result is formatted. You can apply numeric format switch, i.e. \# "#.##", date/time format switch, i.e. \@ "dd.MM.yyyy", and number format switch, i.e. \* Ordinal. Following code example {shows|demonstrates} how to apply custom formatting for field's result.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## How to evaluate IF condition

If you want to evaluate IF condition after mail merge, you can use FieldIf.EvaluateCondition method that immediately returns the result of expression's evaluation. Below code example {shows|demonstrates} how to use this method. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## How to Apply Custom Formatting to Time Field

By default Aspose.Words updates TIME field with current culture short time format. We figured out that there is a difference between MS Word formatting and .NET/Windows formatting and also between different .NET Framework versions. If you want to format the Time field according to your requirement, you can achieve this by implementing IFieldUpdateCultureProvider interface. Below code example {shows|demonstrates} how to apply custom formatting to Time field.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}

## Field Display Result

Aspose.Words provides a property to obtain the field's result for fields that do not have a field separator node. We call this "fake result" or display result; MS Word displays it in the document by calculating the field's value on the fly, but there is no such value in the document model.

The following code example {shows|demonstrates} the usage of Filed.DisplayResult property.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}

