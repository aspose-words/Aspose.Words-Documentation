---
title: Remove Fields C#
second_title: Aspose.Words for .NET
articleTitle: Remove Fields
linktitle: Remove Fields
description: "Learn how to remove fields in C#. Remove fields programmatically using .NET API."
type: docs
weight: 35
url: /net/remove-fields/
---

Sometimes it is necessary to remove a field from a document. This may occur when it needs to be replaced with a different field type or when the field is no longer needed in the document. For example the TOC field when saving to HTML.

To remove a field inserted into a document using [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/), use the returned [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) object, which provides a convenient [Remove](https://reference.aspose.com/words/net/aspose.words.fields/field/remove) method for easily removing the field from the document.

The following code example shows how to remove a field from the document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RemoveField-RemoveField.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}