---
title: Remove Fields using Python
second_title: Aspose.Words for Python via .NET
articleTitle: Remove Fields
linktitle: Remove Fields
description: "Learn how to remove fields in Python. Remove fields programmatically using Python via .NET API."
type: docs
weight: 35
url: /python-net/remove-fields/
---

Sometimes it is necessary to remove a field from the document. This may occur when it is to be replaced with a different field type or when the field is no longer needed in the document. For example a TOC field when saving to HTML.

To remove a field inserted into a document using [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), use the returned [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) object, which provides the convenient [remove](https://reference.aspose.com/words/python-net/aspose.words.fields/field/remove/#default) method to easily remove the field from the document.

The following code example shows how to remove a field from the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}