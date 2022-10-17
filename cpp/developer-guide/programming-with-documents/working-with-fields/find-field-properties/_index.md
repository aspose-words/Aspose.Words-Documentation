---
title: How to Find Field Properties
second_title: Aspose.Words for C++
articleTitle: Find Field Properties
linktitle: Find Field Properties
description: "How to find some field properties like field code and field result in C++."
type: docs
weight: 25
url: /cpp/find-field-properties/
---

A field that is inserted using [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#insertfield_fieldtype_bool) returns a [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field) object. This is a faсade class that provides useful methods to quickly find some properties of a field.

The following code example shows how to find the field code and field result:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Note if you are only looking for the names of merge fields in a document, then you can instead use the built-in [GetFieldNames](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge#getfieldnames) method.

The following code example shows how to get names of all merge fields in a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}