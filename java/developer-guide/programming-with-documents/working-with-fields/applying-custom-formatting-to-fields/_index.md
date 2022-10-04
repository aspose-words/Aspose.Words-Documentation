---
title: Apply Custom Formatting to Fields
second_title: Aspose.Words for Java
articleTitle: Applying Custom Formatting to Fields
linktitle: Applying Custom Formatting to Fields
description: "Format and evaluate fields result using Java."
type: docs
weight: 40
url: /java/applying-custom-formatting-to-fields/
---

Sometimes users need to apply custom formatting to fields. In this article, we will look at a couple of examples of how this can be done.

To learn more options, see the full list of properties for each field type in the corresponding class.

## How to Apply Custom Formatting to Field Result

Aspose.Words provides API for custom formatting of field's result. You can implement [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/IFieldResultFormatter) interface to control how the field result is formatted. You can apply numeric format switch, i.e. \# "#.##", date/time format switch, i.e. \@ "dd.MM.yyyy", and number format switch, i.e. \* Ordinal.

The following code example shows how to apply custom formatting for the field result.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## How to evaluate IF condition

If you want to evaluate IF condition after mail merge, you can use the [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif#evaluateCondition()) method that immediately returns the result of the expression evaluation.

The following code example shows how to use this method:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## How to Apply Custom Formatting to Time Field

By default Aspose.Words updates TIME field with current culture short time format. If you want to format the TIME field according to your requirement, you can achieve this by implementing [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/IFieldUpdateCultureProvider) interface.

The following code examples shows how to apply custom formatting to the TIME field:

EXAMPLE