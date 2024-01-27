---
title: Customize Field Properties in C++
second_title: Aspose.Words for C++
articleTitle: Customize Field Properties
linktitle: Customize Field Properties
description: "Learn how to customize field properties in C++. Rename merge fields or obtain results for fields without separator node in C++."
type: docs
weight: 27
url: /cpp/customize-field-properties/
---

Aspose.Words provides the ability to programmatically interact with various field properties. In this article, we will look at a couple of examples so that you understand the basic principle of working with field properties. You can see the full list of properties for each field type in the corresponding class in the [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Field Property Update

Sometimes users need to change the value of a field property. For example, update the [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) property of the `AUTHOR` field or change the [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) property of the `MERGEFIELD` field.

The following code example shows how to rename merge fields in a Word document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Field Display Result

Aspose.Words provides a property to obtain the field's result for fields that do not have a field separator node. We call this "fake result" or display result; Microsoft Word displays it in the document by calculating the field's value on the fly, but there is no such value in the document model.

The following code example shows the usage of [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/) property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}