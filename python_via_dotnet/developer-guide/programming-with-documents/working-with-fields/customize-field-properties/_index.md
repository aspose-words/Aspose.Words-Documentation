---
title: Customize Field Properties in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Customize Field Properties
linktitle: Customize Field Properties
description: "Learn how to customize field properties in Python. Rename merge fields or obtain results for fields without separator node in Python via .NET."
type: docs
weight: 27
url: /python-net/customize-field-properties/
---

Aspose.Words provides the ability to programmatically interact with various field properties. In this article, we will look at a couple of examples so that you understand the basic principle of working with field properties. You can see the full list of properties for each field type in the corresponding class in the [Fields module](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Field Property Update

Sometimes users need to change the value of a field property. For example, update the [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) property of the `AUTHOR` field or change the [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) property of the `MERGEFIELD` field.

The following code example shows how to rename merge fields in a Word document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Field Display Result

Aspose.Words provides a property to obtain the field's result for fields that do not have a field separator node. We call this "fake result" or display result; MS Word displays it in the document by calculating the field's value on the fly, but there is no such value in the document model.

The following code example shows the usage of [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}