---
title: Find Field Properties in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Find Field Properties
linktitle: Find Field Properties
description: "How to find some field properties like field code and field result in Python."
type: docs
weight: 25
url: /python-net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

A field that is inserted using [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) returns a [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) object. This is a faсade class that provides useful methods to quickly find some properties of a field.

The following code example shows how to find the field code and field result:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Note if you are only looking for the names of merge fields in a document, then you can instead use the built-in [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) method.

The following code example shows how to get names of all merge fields in a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}
